## ----setup, echo=FALSE, message=FALSE-----------------------------------------
library(bslib)

## ----eval = FALSE-------------------------------------------------------------
#  f7List(
#    mode = "simple",
#    lapply(1:5, function(j) {
#      tags$li(
#        paste("Item", j)
#      )
#    })
#  )

## ----eval = FALSE-------------------------------------------------------------
#  f7List(
#    mode = "simple",
#    lapply(1:5, function(j) {
#      f7ListItem(
#        title = paste("Item", j)
#      )
#    })
#  )

## ----eval=TRUE, echo=FALSE----------------------------------------------------
card(
  shinyMobile:::create_app_link(
    "NobwRAdghgtgpmAXGKAHVA6ASmANGAYwHsIAXOMpMAdzgCMAnRRAVwhiLdIAoAdMAPQsAzgwEAbAJZ0BWCdIZQGATwHCAFpIjKAskTqTxcfgEpeEWo2ZbhpKOPF8IAAmf8NW3fsPG851wxwqETCzgC8zgR8YOqkpKjCiAICDFrkDABmUARwGADmkqTqLHQYkkQpaXCZ2XAAtNRQwjB1BIoQAqbmZhDmUoxKytwe2j39iirDmtp6BkY95iPKAILoTq4skuHOGQDsAApQeXDrrs6khUbb-DrKzmio-Lj+Z0SoFyShEVK23AAmSgA1tsAGLLAAyAGUAKK4c7qODwa5gcrCUzPFxnPaQrR5IzgqDKTg8F5nZzQABudCU2z2ADkoFSlNwLqQrhF+HtwZJbOjSVjdtzfvyyRw-nBkcJJDBUEYniKzuIHuIhgBGRAAVjhGTYBA+EG4ACsTM4QAqyVyeaQAJLkGCnMmO86XCURVBNcjRW2Ip7OY3ms49J2uAC+Qcd4dc4ZMGNcwmqFOqtN1+u4WlQLFIcOJGdIJrNmJD3TAIYAukA", # nolint
    "app",
    header = FALSE
  ),
  full_screen = TRUE,
  style = "width: 393px; margin: 0 auto; float: none;"
)

## ----eval=FALSE---------------------------------------------------------------
#  library(shiny)
#  library(shinyMobile)
#  
#  shinyApp(
#    ui = f7Page(
#      title = "My app",
#      options = list(dark = FALSE, theme = "ios"),
#      f7SingleLayout(
#        navbar = f7Navbar(title = "f7List"),
#        f7List(
#          mode = "simple",
#          lapply(1:5, function(j) {
#            f7ListItem(
#              title = paste("Item", j)
#            )
#          })
#        )
#      )
#    ),
#    server = function(input, output) {
#    }
#  )

## ----eval=TRUE, echo=FALSE----------------------------------------------------
card(
  shinyMobile:::create_app_link(
    "NobwRAdghgtgpmAXGKAHVA6ASmANGAYwHsIAXOMpMAdzgCMAnRRAVwhiLdIAoAdMAPQsAzgwEAbAJZ0BWCdIZQGATwHCAFpIjKAskTqTxcfgEpeEWo2ZbhpKOPF8IAAmf8NW3fsPG851wxwqETCzgC8zgR8YOqkpKjCiAICDFrkDABmUARwGADmkqTqLHQYkkQpaXCZ2XAAtNRQwjB1BIoQAqbmZhDmUoxKytwe2j39iirDmtp6BkY95iPKAILoTq4skuHOGQDsAApQeXDrrs6khUbb-DrKzmio-Lj+Z0SoFyShEVK23AAmSgA1tsAGLLAAyAGUAKK4c7qODwa5gcrCUzPFxnPaQrR5IzgqDKTg8F5nZzQABudCU2z2ADkoFSlNwLqQrhF+HtwZJbOjSVjdtzfvyyRw-nBkcJJDBUEYniLXiw2VoJREACpYACqsIVrj+kgpknFDC+zg12oxZLJtgYJDy23NOsxVuc4ge4iGAEZEABWOEZNgED4QbgAKxMzhAuoFQtIAElyDBTi6yaz2c5UE1yNEE4ins5w9HXD0U84AL4lq2V4svEyW5zCaoU6q0wPB7haVBKuHErukCNRzFl7pgMsAXSAA", # nolint
    "app",
    header = FALSE
  ),
  full_screen = TRUE,
  style = "width: 393px; margin: 0 auto; float: none;"
)

## ----eval=FALSE---------------------------------------------------------------
#  library(shiny)
#  library(shinyMobile)
#  
#  shinyApp(
#    ui = f7Page(
#      title = "My app",
#      options = list(dark = FALSE, theme = "ios"),
#      f7SingleLayout(
#        navbar = f7Navbar(title = "f7List"),
#        f7List(
#          mode = "simple",
#          outline = TRUE,
#          dividers = TRUE,
#          strong = TRUE,
#          lapply(1:5, function(j) {
#            f7ListItem(
#              title = paste("Item", j)
#            )
#          })
#        )
#      )
#    ),
#    server = function(input, output) {
#    }
#  )

## ----eval=TRUE, echo=FALSE----------------------------------------------------
card(
  shinyMobile:::create_app_link(
    "NobwRAdghgtgpmAXGKAHVA6ASmANGAYwHsIAXOMpMAdzgCMAnRRAVwhiLdIAoAdMAPQsAzgwEAbAJZ0BWCdIZQGATwHCAFpIjKAskTqTxcfgEpeEWo2ZbhpKOPF8IAAmf8NW3fsPG851wxwqETCzgC8zgR8YOqkpKjCiAICDFrkDABmUARwGADmkqTqLHQYkkQpaXCZ2XAAtNRQwjB1BIoQAqbmZhDmUoxKytwe2j39iirDmtp6BkY95iPKAILoTq4skuHOGQDsAApQeXDrrs6khUbb-DrKzmio-Lj+Z0SoFyShEVK23AAmSgA1tsAGLLAAyAGUAKK4c7qODwa5gcrCUzPFxnPaQrR5IzgqDKTg8F5nZzQABudCU2z2ADkoFSlNwLqQrhF+HtwZJbOjSVjdtzfvyyRw-nBkVIIIC0X5MWTXMSpRKIgAVLAAVVhIrOf0kFMk4oYX2c6q1GIVZ1sDBIeW2Zu18oV4ge4iGAEZEABWOEZNgED4QbgAKxMzhAOrJdjywgAJFJTpayVytIDuC66HBxNtUE1yNEAJLkGBPZyhuHqQIZZGxeKJZLURv5IhEPG5YglsA9JNnbtJgC+fbJQ+cfZMFucwmqFOqtP9ge4WlQLFIcOJy9IYYjmP73TA-YAukA", # nolint
    "app",
    header = FALSE
  ),
  full_screen = TRUE,
  style = "width: 393px; margin: 0 auto; float: none;"
)

## ----eval=FALSE---------------------------------------------------------------
#  library(shiny)
#  library(shinyMobile)
#  
#  shinyApp(
#    ui = f7Page(
#      title = "My app",
#      options = list(dark = FALSE, theme = "ios"),
#      f7SingleLayout(
#        navbar = f7Navbar(title = "f7List"),
#        f7List(
#          mode = "links",
#          outline = TRUE,
#          dividers = TRUE,
#          strong = TRUE,
#          lapply(1:5, function(j) {
#            tags$li(
#              f7Link(label = paste("Item", j), href = "https://www.google.com")
#            )
#          })
#        )
#      )
#    ),
#    server = function(input, output) {
#    }
#  )

## ----eval=TRUE, echo=FALSE----------------------------------------------------
card(
  shinyMobile:::create_app_link(
    "NobwRAdghgtgpmAXGKAHVA6ASmANGAYwHsIAXOMpMAdzgCMAnRRAVwhiLdIAoAdMAPQsAzgwEAbAJZ0BWCdIZQGATwHCAFpIjKAskTqTxcfgEpeEWo2ZbhpKOPF8IAAmf8NW3fsPG851wxwqETCzgC8zgR8YOqkpKjCiAICDFrkDABmUARwGADmkqTqLHQYkkQpaXCZ2XAAtNRQwjB1BIoQAqbmZhDmUoxKytwe2j39iirDmtp6BkY95iPKAILoTq4skuHOGQDsAApQeXDrrs6khUbb-DrKzmio-Lj+Z0SoFyShEVK23AAmSgA1tsAGLLAAyAGUAKK4c7qODwa5gcrCUzPFxnPaQrR5IzgqDKTg8F5nZzQABudCU2z2ADkoFSlNwLqQrhF+HtwZJbOjSVjdtzfvyyRw-nBtnSAKrg8EYslk4lSCASiIAFSwUthIrOf0kFMk4oYX2cGq18oVrlsDBIeW2Zu1mMt4ge4iGAEZEABWOEZNgED4QbgAKxMzhAOrJXJ5pAAkuQYKdLWTWeznKgmuRovHEU9nKGLcmzgioEbthnbCd+AAJOCl6p5guRhUZIhEdLlzNVsAgtvpRsmQtF5zqQIZZGxeKJZLUWf5Nt43LEGD8ZuuHpFgC+G4VO-XL0HL2E1Qp1Vp-sD3C0qBYpDhxJvpDDEcxm+6YE3AF0gA", # nolint
    "app",
    header = FALSE
  ),
  full_screen = TRUE,
  style = "width: 393px; margin: 0 auto; float: none;"
)

## ----eval=FALSE---------------------------------------------------------------
#  library(shiny)
#  library(shinyMobile)
#  
#  shinyApp(
#    ui = f7Page(
#      title = "My app",
#      options = list(dark = FALSE, theme = "ios"),
#      f7SingleLayout(
#        navbar = f7Navbar(title = "f7List"),
#        f7List(
#          mode = NULL,
#          outline = TRUE,
#          dividers = TRUE,
#          strong = TRUE,
#          lapply(1:5, function(j) {
#            f7ListItem(
#              title = paste("Item", j),
#              header = paste("Header", j),
#              footer = paste("Footer", j),
#              href = "https://www.google.com"
#            )
#          })
#        )
#      )
#    ),
#    server = function(input, output) {
#    }
#  )

## ----eval=TRUE, echo=FALSE----------------------------------------------------
card(
  shinyMobile:::create_app_link(
    "NobwRAdghgtgpmAXGKAHVA6ASmANGAYwHsIAXOMpMAdzgCMAnRRAVwhiLdIAoAdMAPQsAzgwEAbAJZ0BWCdIZQGATwHCAFpIjKAskTqTxcfgEpeEWo2ZbhpKOPF8IAAmf8NW3fsPG851wxwqETCzgC8zgR8YOqkpKjCiAICDFrkDABmUARwGADmkqTqLHQYkkQpaXCZ2XAAtNRQwjB1BIoQAqbmZhDmUoxKytwe2j39iirDmtp6BkY95iPKAILoTq4skuHOGQDsAApQeXDrrs6khUbb-DrKzmio-Lj+Z0SoFyShEVK23AAmSgA1tsAGLLAAyAGUAKK4c7qODwa5gcrCUzPFxnPaQrR5IzgqDKTg8F5nZzQABudCU2z2ADkoFSlNwLqQrhF+HtwZJbOjSVjdtzfvyyRw-nBkcQyNlSGi-Jiya5iVIIBKIgAVLAAVVhIrOf0kFMk4oYX2cmp1GMVZ1sDBIeW2Ft1CsV4ge4iGABZEAA2OEZNgED4QbiSEzOEB6slcnmkADidpYqFO1rJrPZznB0PV6uhWEhwEkAF0ramyW70B7uABGRDVgAM-sDwe4ACtw5GXWXXDHbABJcgwFmXNXOVBNcjRfbVYQkJ7Odul7vL0VwA1QbZ2PLCAAkkhgeRTK5XogI23Htjg9eisXiiWSBD+EAwGUU8GoRAYgN2ZQqqDdOTqEQ4gmgIqBwG8Rh1NWPr1gAHjB9Z1POrZwvwGCtqgeRdF2x5liYS54d2ADEzhYFAEB-EQMBjkBqrkiwMB0NU9yhOQcGkFGRFkhe5DXvwADUnoAEzOD6bh4M4wiwP+JwNvWCmKYgACcqlqapcLViYPTccuOkrgAvvp+FcUZerGc4+kES8wjVBSLERAGEBBuUIZaKgLCkHCxIeaQHYvAZ3RgAZRZAA", # nolint
    "app",
    header = FALSE
  ),
  full_screen = TRUE,
  style = "width: 393px; margin: 0 auto; float: none;"
)

## ----eval=FALSE---------------------------------------------------------------
#  library(shiny)
#  library(shinyMobile)
#  
#  shinyApp(
#    ui = f7Page(
#      title = "My app",
#      options = list(dark = FALSE, theme = "ios"),
#      f7SingleLayout(
#        navbar = f7Navbar(title = "f7List"),
#        f7List(
#          mode = "contacts",
#          outline = TRUE,
#          dividers = TRUE,
#          strong = TRUE,
#          lapply(4:6, function(i) {
#            f7ListGroup(
#              title = LETTERS[i],
#              lapply(1:10, function(j) {
#                f7ListItem(title = paste("Person", j),
#                           media = tags$img(
#                           src = paste0("https://cdn.framework7.io/placeholder/people-160x160-", j, ".jpg")
#                           ),
#                           # Random phone number as text
#                           paste0("+42 6 ", sample(10000000:99999999, 1))
#                           )
#              })
#            )
#          })
#        )
#      )
#    ),
#    server = function(input, output) {
#    }
#  )

## ----eval=TRUE, echo=FALSE----------------------------------------------------
card(
  shinyMobile:::create_app_link(
    "NobwRAdghgtgpmAXGKAHVA6ASmANGAYwHsIAXOMpMAdzgCMAnRRAVwhiLdIAoAdMAPQsAzgwEAbAJZ0BWCdIZQGATwHCAFpIjKAskTqTxcfgEpeEWo2ZbhpKOPF8IAAmf8NW3fsPG851wxwqETCzgC8zgR8YOqkpKjCiAICDFrkDABmUARwGADmkqTqLHQYkkQpaXCZ2XAAtNRQwjB1BIoQAqbmZhDmUoxKytwe2j39iirDmtp6BkY95iPKAILoTq4skuHOGQDsAApQeXDrrs6khUbb-DrKzmio-Lj+Z0SoFyShEVK23AAmSgA1tsAGLLAAyAGUAKK4c7qODwa5gcrCUzPFxnPaQrR5IzgqDKTg8F5nZzQABudCU2z2ADkoFSlNwLqQrhF+HtwZJbOjSVjdtzfvyyRw-nBkcQyNlSGi-Jiya5iVIIBKIgAVLAAVVhIrOf0kFMk4oYX2cmp1GMVZ1sDBIeW2Ft1CsV4ge4iGABZEAA2OEZNgED4QbiSEzOEB6slcnmkADidpYqFO1rJrPZznB0PV6uhWEhwEkAF0ramyW70B7uABGRDVgAM-sDwe4ACtw5GXWXXDHbABJcgwFmXNXOVBNcjRfbVYQkJ7Odul7vL0VwA1QWm7PtS6KoGckAD6GUM4j5XZX3YAxM4sFAIH8iDAx+oSBKICwYHRqvdQuQAB6kFGF7WuOthwPW0QANQAMzVs4PpuHgzjCLAqBGDW9aYVh9aIAAnPhBH4XC1YmD0wEXmRK4AL6UWWtGKjRer0ZRJilsI1QUt+EQBhAQblCGWioCwpBwsSQmkB2LxUd0YBUUWQA", # nolint
    "app",
    header = FALSE
  ),
  full_screen = TRUE,
  style = "width: 393px; margin: 0 auto; float: none;"
)

## ----eval=FALSE---------------------------------------------------------------
#  library(shiny)
#  library(shinyMobile)
#  
#  shinyApp(
#    ui = f7Page(
#      title = "My app",
#      options = list(dark = FALSE, theme = "ios"),
#      f7SingleLayout(
#        navbar = f7Navbar(title = "f7List"),
#        f7List(
#          mode = "contacts",
#          outline = TRUE,
#          dividers = TRUE,
#          strong = TRUE,
#          lapply(4:6, function(i) {
#            f7ListGroup(
#              title = LETTERS[i],
#              lapply(1:10, function(j) {
#                f7ListItem(title = paste("Person", j),
#                           media = f7Icon("person_fill"),
#                           # Random phone number as text
#                           paste0("+31 6 ", sample(10000000:99999999, 1))
#                           )
#              })
#            )
#          })
#        )
#      )
#    ),
#    server = function(input, output) {
#    }
#  )

## ----eval=TRUE, echo=FALSE----------------------------------------------------
card(
  shinyMobile:::create_app_link(
    "NobwRAdghgtgpmAXGKAHVA6ASmANGAYwHsIAXOMpMAdzgCMAnRRAVwhiLdIAoAdMAPQsAzgwEAbAJZ0BWCdIZQGATwHCAFpIjKAskTqTxcfgEpeEWo2ZbhpKOPF8IAAmf8NW3fsPG851wxwqETCzgC8zgR8YOqkpKjCiAICDFrkDABmUARwGADmkqTqLHQYkkQpaXCZ2XAAtNRQwjB1BIoQAqbmZhDmUoxKytwe2j39iirDmtp6BkY95iPKAILoTq4skuHOGQDsAApQeXDrrs6khUbb-DrKzmio-Lj+Z0SoFyShEVK23AAmSgA1tsAGLLAAyAGUAKK4c7qODwa5gcrCUzPFxnPaQrR5IzgqDKTg8F5nZzQABudCU2z2ADkoFSlNwLqQrhF+HtwZJbOjSVjdtzfvyyRw-nBkfA-pIoE8Ra8WGytBKIgAVLAAVVh8tc0opknFDC+znVWoxZLJtgYJDy21N2sxFuc4ge4iGAEZEO6AAxwjJsAgfCDcSQmZwgHUCoWkACS5BgpydZNZ7OcqCa5GiqsuvjhofNSctJRTKrTGZO-EhxZzT2c+cjorg0qg2zseWEABJJDA8onC2dbMpU-w6EQGIa6oppSJEM4AByoAAeAG45Y7+65RARtunbHBvdFYvFEskCH8IBgMop4NQx4DdmUKqgXTl1ERxIaBKg4G8jHV3QAbN6i6Ad6dS1pIcL8BgABWqB5Hy64btQBpFMiuzevwDZnCYBYbqkeSxDu5bRFgkiEaQEG4dhri7pmlZEEi4g2tU5xwIupD3KOirwjyZYMBcBAsC6DB1vG8JQJx6hNPCEowEckgEPY5IsDAdDVFReH9uogQZMiADEWFIRaPSFgAvqZJn8pZ1GYsI1QUqxET+hAgblMGWioIqcLEl5pBhhGmJmd0YBmQAukAA", # nolint
    "app",
    header = FALSE
  ),
  full_screen = TRUE,
  style = "width: 393px; margin: 0 auto; float: none;"
)

## ----eval=FALSE---------------------------------------------------------------
#  library(shiny)
#  library(shinyMobile)
#  
#  shinyApp(
#    ui = f7Page(
#      title = "My app",
#      options = list(dark = FALSE, theme = "ios"),
#      f7SingleLayout(
#        navbar = f7Navbar(title = "f7List"),
#        f7List(
#          mode = "media",
#          outline = TRUE,
#          dividers = TRUE,
#          strong = TRUE,
#          lapply(1:10, function(i) {
#            f7ListItem(
#              title = paste("Title", i),
#              subtitle = paste("Subtitle", i),
#              media = tags$img(
#                style = "border-radius: 8px;",
#                src = paste0("https://cdn.framework7.io/placeholder/people-160x160-", i, ".jpg"),
#                width = "70"
#              ),
#              right = paste("Right", i),
#              paste("Some longer text about this particular item that has the magical number", i),
#              href = "#"
#            )
#          })
#        )
#      )
#    ),
#    server = function(input, output) {
#    }
#  )

