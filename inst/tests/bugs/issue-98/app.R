library(shiny)
library(shinyMobile)
library(shinyWidgets)

shinyApp(
  ui = f7Page(
    title = "My app",
    f7TabLayout(
      tags$head(
        tags$script(
          "$(function(){
            $('#tapHold').on('taphold', function () {
            app.dialog.alert('Tap hold fired!');
            });
            });
            "
        )
      ),
      panels = tagList(
        f7Panel(title = "Left Panel", side = "left", theme = "light", "Blabla", effect = "cover"),
        f7Panel(title = "Right Panel", side = "right", theme = "dark", "Blabla", effect = "cover")
      ),
      navbar = f7Navbar(
        title = "Tabs",
        hairline = FALSE,
        shadow = TRUE,
        left_panel = TRUE,
        right_panel = TRUE
      ),
      f7Tabs(
        animated = FALSE,
        swipeable = TRUE,
        f7Tab(
          tabName = "Tab 1",
          icon = f7Icon("email"),
          active = TRUE,
          f7Shadow(
            intensity = 10,
            hover = TRUE,
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
              f7DatePicker(
                inputId = "date",
                label = "Choose a date",
                value = "2019-08-24"
              ),

              plotOutput("distPlot1"),
              footer = tagList(
                f7Button(inputId = "tapHold", label = "My button"),
                f7Badge("Badge", color = "green")
              )
            )
          )
        ),
        f7Tab(
          tabName = "Tab 2",
          icon = f7Icon("today"),
          active = FALSE,
          f7Shadow(
            intensity = 10,
            hover = TRUE,
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
              plotOutput("distPlot2"),
              footer = tagList(
                f7Button(label = "My button"),
                f7Badge("Badge", color = "orange")
              )
            )
          )
        ),
        f7Tab(
          tabName = "Tab 3",
          icon = f7Icon("cloud_upload"),
          active = FALSE,
          f7Shadow(
            intensity = 10,
            hover = TRUE,
            f7Card(
              title = "Card header",
              f7SmartSelect(
                inputId = "variable",
                label = "Variables to show:",
                c("Cylinders" = "cyl",
                  "Transmission" = "am",
                  "Gears" = "gear"),
                multiple = TRUE,
                selected = "cyl"
              ),
              tableOutput("data"),
              footer = tagList(
                f7Button(label = "My button"),
                f7Badge("Badge", color = "green")
              )
            )
          )
        )
      )
    )
  ),
  server = function(input, output) {
    output$distPlot1 <- renderPlot({
      dist <- rnorm(input$obs1)
      hist(dist)
    })

    output$distPlot2 <- renderPlot({
      dist <- switch(
        input$obs2,
        norm = rnorm,
        unif = runif,
        lnorm = rlnorm,
        exp = rexp,
        rnorm
      )

      hist(dist(500))
    })

    output$data <- renderTable({
      mtcars[, c("mpg", input$variable), drop = FALSE]
    }, rownames = TRUE)
  }
)
