library(shiny)
library(shinyMobile)
library(DBI)
library(dplyr)
library(tibble)
library(parallel)

shinyApp(
  ui = f7Page(
    title = "shinyChat",
    allowPWA = TRUE,
    f7SingleLayout(
      navbar = f7Navbar(
        title = "shinyChat",
        hairline = FALSE,
        shadow = TRUE,
        transparent = TRUE,
        bigger = TRUE
      ),
      toolbar = f7MessageBar(inputId = "mymessagebar", placeholder = "Message"),
      # main content
      f7Messages(id = "mymessages", title = "Chat Room")

    )
  ),
  server = function(input, output, session) {

    messages_table <- reactiveValues()
    firstConnect <- reactiveVal(TRUE)

    observe({
      f7Dialog(
        type = "prompt",
        text = "Enter your pseudo",
        id = "nickname"
      )
    }, priority = 100)

    # load messages first
    observe({
      # load all messages
      if (firstConnect()) {
        req(input$nickname)
        con <- DBI::dbConnect(
          RPostgres::Postgres(),
          dbname = "deminr",
          host = "46.101.117.230",
          port = "5432",
          user = "divad",
          password = "prout"
        )

        # Get the messages
        messages_table$table <- DBI::dbReadTable(con, name = "messages")
        messages <- mclapply(seq_len(nrow(messages_table$table)), function(i) {
          temp_message <- messages_table$table %>% dplyr::slice(i)

          f7Message(
            text = temp_message$message,
            header = temp_message$date,
            name = temp_message$nickname,
            type = if (input$nickname == temp_message$nickname){
              "sent"
            } else {
              "received"
            },
            avatar = "https://cdn.framework7.io/placeholder/people-100x100-9.jpg"
          )
        }, mc.cores = detectCores() - 1)

        f7AddMessages(id = "mymessages", messages)

        firstConnect(FALSE)
        # Disconnect from database
        DBI::dbDisconnect(con)
      }
    })


    # get update by other people
    #observe({
    #  req(!firstConnect())
    #  invalidateLater(1000)
    #  con <- DBI::dbConnect(
    #    RPostgres::Postgres(),
    #    dbname = "deminr",
    #    host = "46.101.117.230",
    #    port = "5432",
    #    user = "divad",
    #    password = "prout"
    #  )
    #  # select only the last message
    #  messages <- DBI::dbReadTable(con, name = "messages")
    #  new_lines <- nrow(messages) - nrow(messages_table$table)
    #  if (new_lines > 0) {
    #    new_messages <- messages %>%
    #      dplyr::slice(tail(row_number(), new_lines))
    #    new_messages <- lapply(seq_len(nrow(new_messages)), function(i) {
    #      temp_message <- new_messages %>% dplyr::slice(i)
    #      f7Message(
    #        text = temp_message$message,
    #        header = temp_message$date,
    #        name = temp_message$nickname,
    #        type = if (input$nickname == temp_message$nickname){
    #          "sent"
    #        } else {
    #          "received"
    #        },
    #        avatar = "https://cdn.framework7.io/placeholder/people-100x100-9.jpg"
    #      )
    #    })
    #    f7AddMessages(id = "mymessages", new_messages, showTyping = TRUE)
    #    messages_table$table <- messages
    #    #shinyjs::delay(1000, {
    #    #  messages_table$table <- messages
    #    #})
    #  }
    #  DBI::dbDisconnect(con)
    #})

    # send message part
    observeEvent(input[["mymessagebar-send"]], {
      message_to_send <- f7Message(
        text = input$mymessagebar,
        name = input$nickname,
        type = "sent",
        header = Sys.time(),
        avatar = "https://cdn.framework7.io/placeholder/people-100x100-9.jpg"
      )

      f7AddMessages(
        id = "mymessages",
        list(message_to_send),
        showTyping = TRUE
      )

      con <- DBI::dbConnect(
        RPostgres::Postgres(),
        dbname = "deminr",
        host = "46.101.117.230",
        port = "5432",
        user = "divad",
        password = "prout"
      )

      # Convert to tibble to tidy data
      # DB column names are different
      # We need to do some cleaning
      message_to_send <- message_to_send %>%
        as_tibble() %>%
        select(name, text, header) %>%
        rename(nickname = "name", message = "text", date = "header")

      DBI::dbAppendTable(con, name = "messages", value = message_to_send)
      messages_table$table <- DBI::dbReadTable(con, name = "messages")
      DBI::dbDisconnect(con)
    })
  }
)
