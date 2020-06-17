## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(shiny)
library(shinyMobile)

## ---- eval = FALSE------------------------------------------------------------
#  preview_mobile(appPath = system.file("examples/gallery/app.R", package = "shinyMobile"), device = "iphoneX")
#  preview_mobile(url = "https://dgranjon.shinyapps.io/miniUI2DemoMd", device = "ipadMini")

## ---- eval = FALSE------------------------------------------------------------
#  shiny::shinyApp(
#    ui = f7Page(
#      title = "My app",
#      f7SingleLayout(
#        navbar = f7Navbar(
#          title = "Access device info",
#          hairline = FALSE,
#          shadow = TRUE
#        ),
#        # main content
#        verbatimTextOutput("info")
#      )
#    ),
#    server = function(input, output) {
#      output$info <- renderPrint({
#        input$deviceInfo
#      })
#    }
#  )

## ---- eval = FALSE------------------------------------------------------------
#  shiny::shinyApp(
#    ui = f7Page(
#      title = "My app",
#      f7SingleLayout(
#        navbar = f7Navbar(
#          title = "Access device info",
#          hairline = FALSE,
#          shadow = TRUE
#        ),
#        # main content
#        uiOutput("card"),
#        textOutput("userAgent"),
#      )
#    ),
#    server = function(input, output) {
#  
#      output$userAgent <- renderText(input$deviceInfo$desktop)
#  
#      # generate a card inkly for desktop
#      output$card <- renderUI({
#        if (input$deviceInfo$desktop) {
#          f7Card(
#            "This is a simple card with plain text,
#            but cards can also contain their own header,
#            footer, list view, image, or any other element."
#          )
#        }
#      })
#    }
#  )

## ---- eval = FALSE------------------------------------------------------------
#  library(shiny)
#  library(shinyMobile)
#  shiny::shinyApp(
#    ui = f7Page(
#      title = "My app",
#      f7SingleLayout(
#        navbar = f7Navbar(
#          title = "Single Layout",
#          hairline = FALSE,
#          shadow = TRUE
#        ),
#        toolbar = f7Toolbar(
#          position = "bottom",
#          f7Link(label = "Link 1", src = "https://www.google.com"),
#          f7Link(label = "Link 2", src = "https://www.google.com", external = TRUE)
#        ),
#        # main content
#        f7Card(verbatimTextOutput("infos")),
#        f7Card(
#          f7Text(inputId = "text", label = "Text"),
#          f7Slider(inputId = "range1", label = "Range", min = 0, max = 2, value = 1, step = 0.1),
#          f7Stepper(inputId = "stepper1", label = "Stepper", min = 0, max = 10, value = 5),
#          verbatimTextOutput("lastChanged")
#        )
#      )
#    ),
#    server = function(input, output) {
#      output$infos <- renderPrint(input$shinyInfo)
#      output$lastChanged <- renderPrint(input$lastInputChanged)
#    }
#  )

