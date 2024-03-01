## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup, echo=FALSE, message=FALSE-----------------------------------------
library(bslib)

## ----eval = FALSE-------------------------------------------------------------
#  library(shiny)
#  library(shinyMobile)
#  preview_mobile(appPath = system.file("examples/gallery/app.R", package = "shinyMobile"), device = "iphoneX")
#  preview_mobile(url = "https://dgranjon.shinyapps.io/miniUI2DemoMd", device = "ipadMini")

## ----eval=TRUE, echo=FALSE----------------------------------------------------
card(
  shinyMobile:::create_app_link(
    "NobwRAdghgtgpmAXGKAHVA6ASmANGAYwHsIAXOMpMAGwEsAjAJykYE8AKAZwAtaJWAlAB0IdJiw48+rALJF6tanGEQRU-gEF07EQAJdAV1q6AvLoBmAdgAKUAOZwdEfftK1SS07qFgZrXWioPrh6LkSobiScXnScpOyoBtTUACpEWHDmjHA8XilYAKoAogIhzi5WAMp8dkoAMlCsRAbxoS660ABu9CxeVgByUN0sTu3tbh5wXj7VELVTDU0twW1j3FC0jHQQU2YAYhp1lUVlYy48UAAmRADueYVFq-qlT7qkRETUPYx9lmmf31GZ10qCInHctBI0zA9CIpHeMBW5TOVjqfAA1uxqFB6HBqNC0RB0boAIzBXTcbLmaHceGoTiIAD0jJurIwdg+8wwxERYBeyLGqIxWJxeIJGN0ACZyZTMjS6QzmaybuzOUpuUReSozvyzgBiXQwDbOYhkCikV5CuJAs7Y9DUDgkxAAZlwFgMEAIkQg7AAVgJdCBXu0raQAJLkGA24H6JTwuCMTjAX0AXVOMZc8EutCgvzDpp0KGxjBgAH1zIpqD5dRn9IxaHZadCsA2myk4AAPC14YNrOBXBPQgAS-cuCaRtf05g+5B+Zh8exn47AveevYAvtqxlu1+Ua5wE51B2ZzB6vZCfXxEqQ3c1SNe3QfOOCSAGgwL5AfGEeEvWyOwrxaAASCJGAEFRVk-Q84CKI9-0A0gQNIRg3XfM5QMqUgoFIAxogAHgAWl0WhqQAiBryQsDvDAEgfEtSwABEc2oIg7GjcZO1ILxUCgOJHAAclA4jOH4t0MKwnDOBrM5SFYVBdmoqAlEYbtXh3XRN1CdcRAEMB1xTIA", #nolint
    "app",
    header = FALSE
  ),
  full_screen = TRUE
)

## ----eval=FALSE---------------------------------------------------------------
#  library(shiny)
#  library(shinyMobile)
#  
#  shinyApp(
#    ui = f7Page(
#      title = "My app",
#      options = list(pullToRefresh = TRUE),
#      f7SingleLayout(
#        navbar = f7Navbar(
#          title = "Single Layout",
#          hairline = FALSE,
#          shadow = TRUE
#        ),
#        toolbar = f7Toolbar(
#          position = "bottom",
#          f7Link(label = "Link 1", href = "https://www.google.com"),
#          f7Link(label = "Link 2", href = "https://www.google.com")
#        ),
#        # main content
#        f7List(
#          lapply(1:3, function(j) {
#            f7ListItem(
#              letters[j],
#              media = f7Icon("alarm_fill"),
#              right = "Right Text",
#              header = "Header",
#              footer = "Footer"
#            )
#          })
#        )
#      )
#    ),
#    server = function(input, output, session) {
#      observe(print(input$ptr))
#  
#      observeEvent(input$ptr, {
#        ptrStatus <- if (input$ptr) "on"
#        f7Dialog(
#          text = paste('ptr is', ptrStatus),
#          type = "alert"
#        )
#      })
#    }
#  )
#  

## ----eval=TRUE, echo=FALSE----------------------------------------------------
card(
  shinyMobile:::create_app_link(
    "NobwRAdghgtgpmAXGKAHVA6ASmANGAYwHsIAXOMpMAGwEsAjAJykYE8AKAZwAtaJWAlAB0IdJiw48+rALJF6tanGEQRU-gEF07EQAJdAV1q6AvLoBmAdgAKUAOZwdEffqKpStEp1O66nUuwAJiwA1j4AYhoAMgDKAKICuHouHqRKPkJgMqy6aKiZSc4uVjF8dkpRUKxEBgHJLrrQAG70LD5WAHJQLSxODQ2p6WaZGgQEcJzegXBNtOO6fOZEBfX93FC0jHQQcBHR8YX9LjxQgUQA7j4AKlgAqnGr+omPugDEujAbzsRkFKQvTTgjFaHhgVzgAA9SAB5WqoWo6MCLZZgFQNNG6Z5FThAwGMdoGCAEDwkdh8eGkXC6GqkCkCXQgVY0ikAEmRugAPABaXSMCjTRjWRh8AKMooNcm1FnTWbjACSECWqwAvhjlSIBGBlQBdIA", #nolint
    "app",
    header = FALSE
  ),
  full_screen = TRUE
)

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

## ----eval=TRUE, echo=FALSE----------------------------------------------------
card(
  shinyMobile:::create_app_link(
    "NobwRAdghgtgpmAXGKAHVA6ASmANGAYwHsIAXOMpMAGwEsAjAJykYE8AKAZwAtaJWAlAB0IdJiw48+rALJF6tanGEQRU-gEF07EQAJdAV1q6AvLoBmAdgAKUAOZwdEffqKpStEp1O66nUuwAJiwA1j4AYhoAMgDKAKICuHouHqRKPkJgMqy6aKiZSc4uVjF8dkpRUKxEBgHJLrrQAG70LD5WAHJQLSxODQ2p6WaZGgQEcJzegXBNtOO6fOZEBfX93FC0jHQQcBHR8YX9LjxQgUQA7j4AKlgAqnGr+omPugDEujAbzsRkFKQvRgA8rVULUdIQWIFMs8igM4AAPUjA0igupgAycOCMDQOMjQw4uFRPAmYxhNLHtAwQAgeEjsPio3C6Goo2oCXQgVarFmogAkGKxOL+ugAPABaXSMCjTRhXBEBBm1XnTWbjACSECWyomIVIbiJLlW71xWKg5FyugIkOZohyS0YummnF1bm5IKVVsYgVFEqlEBltzV7E5sJcUoAjvSIHyVXM4BqtU6XagDQ0rABhSF9I66TJXXjeWjeKC6Ti0GCodKe73nWikbi6StfXTkREEo70WqWyHeK3OKDUThES0kUjN+twTbM87ObhwU5Y9v9JZEciMJl+Ui6WZwc5M8v2OBMogOqD8ZkTh1wJTwMgYTIvVO6AC+BufIgEYGfAF0gA", #nolint
    "app",
    header = FALSE
  ),
  full_screen = TRUE
)

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
#      # generate a card only for desktop
#      output$card <- renderUI({
#        req(input$deviceInfo$desktop)
#        f7Card(
#          "This is a simple card with plain text,
#          but cards can also contain their own header,
#          footer, list view, image, or any other element."
#        )
#      })
#    }
#  )

## ----eval=TRUE, echo=FALSE----------------------------------------------------
card(
  shinyMobile:::create_app_link(
    "NobwRAdghgtgpmAXGKAHVA6ASmANGAYwHsIAXOMpMAGwEsAjAJykYE8AKAZwAtaJWAlAB0IdJiw48+rALJF6tanGEQRU-gEF07EQAJdAV1q6AvLoBmAdgAKUAOZwdEffqKpStEp1O66nUuwAJiwA1j4AYhoAMgDKAKICuHouHqRKPkJgMqy6aKiZSc4uVjF8dkpRUKxEBgHJLrrQAG70LD5WAHJQLSxODQ2p6WaZpRDlcLqV1bUF9f3cULSMdBATZpGxcYX9LjxQgUQA7j4AKlgAqnFz+onXuqRERNStjO2WJ4-PvXf6qESctA8JAyYHoRFIDxgsyKOysUT4IXY1Cg9Dg1BB8IgYQAjAVdNxGHBzCDuBDUJxEAB6SmHWkYOyPcYYYhQsC3GH9OEIpEotEYhG6ABMeIJRJJZIp1Nph3pjKUzKIrJUO3ZOwAxLoYItnMQyBRSHcrABhFiBdhNOCMVoeGAnOAAD1IAHlaqhajowHxzP9MgJVZzLCbGGafhZ3g6Anw3aQAJKBEHkR145Go9HDMB2pNs7Y7MMxOiBS3sKO1OMg5hjOC4vC+Xlp3SZLBQSt4mB8HwABlwmqg9p8gu7TSg1AMa102O7-jgqE7GGx-thlhi5HQRZLsfj6anq8Y1e7Kb56eX09Qltb7bMXZ7fbM2KvQ5HY4ArAv+harVAbZnna73Zlkf4RoLJWgS+ncyouBB-qcJa77tAYEAEECEDFhA0bdjUpDRgIuggHMmHRgAJF6-y6AAPAAtLohIQIWjDWIwfCRmhtSEeorAxhA3oQa4v6kIRAGkEBzYOPGlHURQdEMUxqFEYJnHRsJIEQQAviIAhgCpAC6QA", #nolint
    "app",
    header = FALSE
  ),
  full_screen = TRUE
)

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
#          title = "Single Layout",
#          hairline = FALSE,
#          shadow = TRUE
#        ),
#        toolbar = f7Toolbar(
#          position = "bottom",
#          f7Link(label = "Link 1", href = "https://www.google.com"),
#          f7Link(label = "Link 2", href = "https://www.google.com")
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

