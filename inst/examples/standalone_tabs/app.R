library(shiny)
library(shinyMobile)

shinyApp(
  ui = f7Page(
    title = "Standalone tabs",
    options = list(
      theme = "auto",
      dark = TRUE,
      filled = FALSE,
      color = "#007aff",
      touch = list(
        tapHold = TRUE,
        tapHoldDelay = 750,
        iosTouchRipple = FALSE
      ),
      iosTranslucentBars = FALSE,
      navbar = list(
        iosCenterTitle = TRUE,
        hideOnPageScroll = TRUE
      ),
      toolbar = list(
        hideOnPageScroll = FALSE
      ),
      pullToRefresh = TRUE
    ),
    f7SingleLayout(
      navbar = f7Navbar(
        title = "Standalone tabs",
        hairline = FALSE
      ),
      f7Block(f7Button(inputId = "removeTab", "Remove Tab")),
      f7Block(f7Button(inputId = "updateTab", "Update Tab")),
      f7Tabs(
        id = "tabs",
        style = "strong", animated = FALSE, swipeable = TRUE,
        f7Tab(
          title = "Tab 1",
          tabName = "Tab1",
          icon = f7Icon("folder"),
          active = TRUE,
          f7Card(
            title = "Card header",
            f7Stepper(
              "obs1",
              "Number of observations",
              min = 0,
              max = 1000,
              value = 500,
              step = 100
            ),
            plotOutput("distPlot")
          )
        ),
        f7Tab(
          title = "Tab 2",
          tabName = "Tab2",
          icon = f7Icon("today"),
          active = FALSE,
          f7Card(
            title = "Card header",
            f7Select(
              inputId = "obs2",
              label = "Distribution type:",
              choices = c(
                "Normal" = "norm",
                "Uniform" = "unif",
                "Log-normal" = "lnorm",
                "Exponential" = "exp"
              )
            ),
            plotOutput("distPlot2")
          )
        ),
        f7Tab(
          title = "Tab 3",
          tabName = "Tab3",
          icon = f7Icon("cloud_upload"),
          active = FALSE,
          f7Card(
            title = "Card header",
            f7SmartSelect(
              inputId = "variable",
              label = "Variables to show:",
              c(
                "Cylinders" = "cyl",
                "Transmission" = "am",
                "Gears" = "gear"
              ),
              multiple = TRUE,
              selected = "cyl"
            ),
            tableOutput("data")
          )
        )
      )
    )
  ),
  server = function(input, output, session) {
    n <- reactiveValues(tabs = 1:3)

    observe({
      print(input$tabs)
      print(n$tabs)
      print(randomTab())
    })

    randomTab <- eventReactive(input$removeTab, {
      sample(n$tabs, 1)
    })

    # remove tab
    observeEvent(input$removeTab, {
      req(randomTab())
      removeF7Tab(
        id = "tabs",
        target = paste0("Tab", randomTab())
      )
      n$tabs <- n$tabs[-randomTab()]
    })

    # add new tab
    observeEvent(input$ptr, {
      insertF7Tab(
        id = "tabs",
        tab = f7Tab(
          tabName = paste0("Tab", length(n$tabs) + 1),
          f7Block(
            paste("New tab", length(n$tabs) + 1),
            strong = TRUE,
            inset = TRUE
          )
        ),
        target = paste0("Tab", length(n$tabs)),
        position = "after",
        select = TRUE
      )
      # increment the number of tabs
      n$tabs <- c(n$tabs, length(n$tabs) + 1)
    })

    # updateTab selection
    observeEvent(input$updateTab, {
      updateF7Tabs(
        id = "tabs",
        selected = paste0("Tab", sample(n$tabs, 1))
      )
    })

    output$distPlot <- renderPlot({
      dist <- rnorm(input$obs1)
      hist(dist)
    })

    output$distPlot2 <- renderPlot({
      dist <- switch(input$obs2,
        norm = rnorm,
        unif = runif,
        lnorm = rlnorm,
        exp = rexp,
        rnorm
      )

      hist(dist(500))
    })

    output$data <- renderTable(
      {
        mtcars[, c("mpg", input$variable), drop = FALSE]
      },
      rownames = TRUE
    )
  }
)
