## ----setup, echo=FALSE, message=FALSE-----------------------------------------
library(bslib)

## ----eval = FALSE-------------------------------------------------------------
#  library(shiny)
#  library(shinyMobile)
#  
#  shinyApp(
#    ui = f7Page(
#      options = list(dark = FALSE),
#      title = "My app",
#      f7SingleLayout(
#        navbar = f7Navbar(
#          title = "Custom disconnected screen",
#          hairline = FALSE
#        ),
#        f7List(
#          inset = TRUE,
#          dividers = FALSE,
#          strong = TRUE,
#          f7Text(
#            inputId = "text",
#            label = "Text input",
#            value = "Some text",
#            placeholder = "Your text here"
#          ),
#          f7Select(
#              inputId = "select",
#              label = "Make a choice",
#              choices = 1:3,
#              selected = 1
#            )
#        ),
#        f7Block(
#          f7Button(inputId = "disconnect",
#                   label = "Disconnect me")
#        ),
#        f7Block(
#          verbatimTextOutput("mytext"),
#          verbatimTextOutput("myselect")
#        )
#      )
#    ),
#    server = function(input, output) {
#      # set ignoreInit to avoid the observer being triggered after reconnect
#      # this happens because of restoring the app's state
#      observeEvent(input$disconnect, ignoreInit = TRUE, {
#        print(input$disconnect)
#        stop("Oops, I disconnected you!")
#      })
#  
#      output$mytext <- renderText({
#        input$text
#      })
#  
#      output$myselect <- renderText({
#        input$select
#      })
#    }
#  )

