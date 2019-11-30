## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(shiny)
library(shinyMobile)

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

