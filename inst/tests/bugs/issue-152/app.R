library(shiny)
library(shinyMobile)

shinyApp(
  ui = f7Page(
    title = "My app",
    f7SingleLayout(
      navbar = f7Navbar(title = "f7Stepper"),
      f7Stepper(
        inputId = "stepper",
        label = "My stepper",
        min = 0,
        max = 10,
        value = 4
      ),
      verbatimTextOutput("test"),
      f7Stepper(
        inputId = "stepper2",
        label = "My stepper 2",
        min = 0,
        max = 10,
        value = 4,
        color = "orange",
        raised = TRUE,
        fill = TRUE,
        rounded = TRUE
      ),
      verbatimTextOutput("test2")
    )
  ),
  server = function(input, output) {
    output$test <- renderPrint(input$stepper)
    output$test2 <- renderPrint(input$stepper2)
  }
)
