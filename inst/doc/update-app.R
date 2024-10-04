## ----setup, echo=FALSE, message=FALSE-----------------------------------------
library(bslib)

## ----eval=TRUE, echo=FALSE----------------------------------------------------
card(
  shinyMobile:::create_app_link(
    "NobwRAdghgtgpmAXGKAHVA6ASmANGAYwHsIAXOMpMAdzgCMAnRRAVwhiLdIAoAdMAPQsAzgwEAbAJZ0BWCdIZQGATwHCAFpIjKAskTqTxcfgEpeEWo2ZbhpKOPF8IAAmf8NW3fsPG851wxwqETCzgC8zgR8YOqkpKjCiAICDFrkDABmUARwGADmkqTqLHQYkkQpaXCZ2XAAtNRQwjB1BIoQAqbmZhDmUoxKytwe2j39iirDmtp6BkY95sTiRAyhADx1kU6uUnmxdOIscOFuYADEAKzZABxZ-Lj+zqhaANYn-GcZGQBMACYXF3uj3I9ne5wADOCAJwANmu1yBLmcyjgDiI1DBnwyBAIkP43XM5hGygAguhts4WJIThkAOwABSgeTgFNcpEKRjBAFVUL8oORnGTUIjXK4iKh2SRQhFWaKpLZZaLIkRlgxMVcCLcoPikUqenqHrrnHSAMpaPJGAAyUGUnB4jyV0AAbnQlDTaQA5KAupTcdmkTkRfg8vkCoWmQ1K1x0gBCywILwAKhyWcHefzjkU4PAIw7Raa4Hl4GRFfnaTGWHESKWlVpUJWAJK-MFZ+AAfXKwhFUaV-EkAHkTc5W748wax2WK1WIDXRXXG82g2AR22YL9uz3XPwdAARYfqbOjo16icmSNR2PxpMp6ImuCkZx8hhvDi-XxnicFosUe3HyeV0hqwnWsIHrUgmzBCgoAOOA2yfF5X18c9N1OABRaAYMfJQEKIN8dRQj8-2jcsAKAoi51AhcwV+SRhGgow4OwxCN03fgd1o+jjng5iwGA5x9SjQie0vIgE2TANUzAABhdQoAgZllVVfdD1zP8v2LX8ULsPJLVozSUOccQ0FQcQhmgeBhG4JYVmEISDM3DI2AISUZ2shgTGcEA+Ps40SOnWcfNcedwMXJ4mnIcFojctt7kUlY7MCzcjLoVETjc5DEqjNy0pVFYMsy-jvJQgBfIqBJ7crRUqgS7OEaonWqGknJc7hgtwZw7TA9q6uEYRyggDyvN6I19DqhgGtQhqS2CgASFdO3aoaexYdNyAAMVpIVZ3FFzpUMvSAuU+AwU7fDN0q1xKuKhYRroMaJqmnhZpXNdFonFbQzgDatr4nb+r2+V9K0g9jqXNczoq0882uwlbvuuBJp-VrKNIGaoJgxjn0Qt6-w+jNvvJX6JX+k5AcO+CTkTLAuVQviLsKo0YeGpVRvqhHHuRsCZpouiMe43C4Bx5bVq+zbCfIv6pVJg6iopiI1pJS0TVp8j6aum6lSM9BTO4cy4EstzbPaxyIGc-qrNy9zPInVnxvZpHguAYBUHCuBIv4aLYrckwAF0faFzc8fWsXUEOyWIABmXyKVbKIkN4A3J9sq6YnJmlSZx5SoGsBip9oA", # nolint
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
#  colors <- c(
#    lightblue = "#5ac8fa",
#    pink = "#ff2d55",
#    teal = "#009688",
#    yellow = "#ffcc00"
#  )
#  
#  shinyApp(
#    ui = f7Page(
#      title = "Update App",
#      options = (
#        list(
#          color = "#5ac8fa"
#        )
#      ),
#      f7SingleLayout(
#        navbar = f7Navbar(title = "Update App"),
#        f7BlockTitle("Update theme"),
#        f7Segment(
#          f7Button(
#            inputId = "theme_ios",
#            "iOS theme"
#          ),
#          f7Button(
#            inputId = "theme_md",
#            "MD theme"
#          )
#        ),
#        f7BlockTitle("Set dark mode"),
#        f7Segment(
#          f7Button(
#            inputId = "enable_darkmode",
#            "Enable darkmode"
#          ),
#          f7Button(
#            inputId = "disable_darkmode",
#            "Disable darkmode"
#          )
#        ),
#        f7BlockTitle("Change color theme"),
#        f7Segment(
#          tagList(
#            lapply(names(colors),
#                   function(color) {
#                     f7Button(
#                       inputId = paste0("color_", color),
#                       label = color,
#                       color = color,
#                     )
#                   }
#            )
#          )
#        )
#      )
#    ),
#    server = function(input, output, session) {
#  
#      observeEvent(input$theme_ios, {
#        updateF7App(
#          options = list(
#            theme = "ios"
#          )
#        )
#      })
#  
#      observeEvent(input$theme_md, {
#        updateF7App(
#          options = list(
#            theme = "md"
#          )
#        )
#      })
#  
#      observeEvent(input$enable_darkmode, {
#        updateF7App(
#          options = list(
#            dark = TRUE
#          )
#        )
#      })
#  
#      observeEvent(input$disable_darkmode, {
#        updateF7App(
#          options = list(
#            dark = FALSE
#          )
#        )
#      })
#  
#      lapply(names(colors), function(color) {
#        observeEvent(input[[paste0("color_", color)]], {
#          updateF7App(
#            options = list(
#              color = colors[color]
#            )
#          )
#        })
#      })
#  
#    }
#  )

## ----eval=TRUE, echo=FALSE----------------------------------------------------
card(
  shinyMobile:::create_app_link(
    "NobwRAdghgtgpmAXGKAHVA6ASmANGAYwHsIAXOMpMAdzgCMAnRRAVwhiLdIAoAdMAPQsAzgwEAbAJZ0BWCdIZQGATwHCAFpIjKAskTqTxcfgEpeEWo2ZbhpKOPF8IAAmf8NW3fsPG851wxwqETCzgC8zgR8YOqkpKjCiAICDFrkDABmUARwGADmkqTqLHQYkkQpaXCZ2XAAtNRQwjB1BIoQAqbmZhDmUoxKytwe2j39iirDmtp6BkY95iPKAILoTq4skuHOGQDsAApQeXDrrs6khUbb-ACqqAAmUOTOq6j8uP5newDKWnlGABkoMpODxPmdnNAAG50JTbPYAOSgMKU3AupCuEVuDyecBe6FMHxcEJ2uwAQuIiAQANYAFUuJ2xj2eewAIpJ7EQ8pESBlJHkWIoLiRCeCvrtvnA8vAyKcSaSySw4iQ5fLnFpUEqAJL3a5gPJERXK3p+Ylqtxgb7qIjUUnszncgCM-DFEJMRPNeyNpBVrpJGu1uqx+sNSp9EAATO8-RD+FabXaOZTuVGwDHnO7016w76zWqA6QdXqWDjyNG8-KmbieRA+XkXRWzj15Zm882Mx7nMJqlDqvC2ARhRBuAXcM5QZrSGPu8JhOUICZnCAxfpuwxewBRXuygsAEgN3pIY+XjbZSa5qohkiDFvu57yztN5vRmIt9uT5wZ5efcAAHqQ9VpTRQkkUIoBrPkGBgZw7wdb81VIZRUDxYNiFrSQoIbFsxQAX3bVwVzoNdN23Hg9wPHNI2PP0zwdS8zhfFCLWWCAiCKPtYI-Rj4Plch-0A4D1TAlx7GqUgsJJfDnDw8xCOIuAtwoMiIEnXcS2ZOBqMbdTcQAMV2V56NcIhUCHUIIikWwjLOTiuW2SywUbeU6EogB5ak9QATTgKBfKgdQAEIePNZwXONABhKAIBycQ9VclgEoSIK0ycpt0yk1wMrcU9dnfC902vPVbLyVNO14hk9QAdSUCA-mCiFEOQvU0MgmB6oYv8AODAEiCIDynmceAxy1Zx1GRPFwIgOBbTC8NhGSv0ssrPMZLzT4cO6MAcIAXSAA", # nolint
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
#      title = "Update App",
#      f7SingleLayout(
#        navbar = f7Navbar(title = "Update App"),
#        f7BlockTitle("Update f7Dialog configuration"),
#        f7Segment(
#          f7Button(
#            inputId = "goButton",
#            "Show f7Dialog 1"
#          ),
#          f7Button(
#            inputId = "goButton2",
#            "Show f7Dialog 2"
#          ),
#          f7Button(
#            inputId = "update",
#            "Update config"
#          )
#        ),
#      )
#    ),
#    server = function(input, output, session) {
#      observeEvent(input$goButton, {
#        f7Dialog(
#          id = "dialog1",
#          title = "Dialog title",
#          text = "This is a confirm dialog",
#          type = "confirm"
#        )
#      })
#  
#      observeEvent(input$goButton2, {
#        f7Dialog(
#          title = "Another dialog title",
#          text = "This is an alert"
#        )
#      })
#  
#      observeEvent(input$update, {
#        updateF7App(
#          options = list(
#            dialog = list(
#              buttonOk = "Yeaaaah!",
#              buttonCancel = "Ouuups!"
#            )
#          )
#        )
#  
#        f7Dialog(
#          id = "dialog2",
#          title = "Warning",
#          type = "confirm",
#          text = "Look at me, I have a new buttons!"
#        )
#  
#      })
#  
#    }
#  )

## ----eval=TRUE, echo=FALSE----------------------------------------------------
card(
  shinyMobile:::create_app_link(
    "NobwRAdghgtgpmAXGKAHVA6ASmANGAYwHsIAXOMpMAdzgCMAnRRAVwhiLdIAoAdMAPQsAzgwEAbAJZ0BWCdIZQGATwHCAFpIjKAskTqTxcfgEpeEWo2ZbhpKOPF8IAAmf8NW3fsPG851wxwqETCzgC8zgR8YOqkpKjCiAICDFrkDABmUARwGADmkqTqLHQYkkQpaXCZ2XAAtNRQwjB1BIoQAqbmZhDmUoxKytwe2j39iirDmtp6BkY95iPKAILoTq4skuHOGQDsAApQeXDrrs6khUbb-ACqqAAmUOTOAKJkhcr8uP5newDKWjyRgAMlBlJweD8zs5oAA3OhKbZ7AByUHhSm4F1IVwitweTzgzmyFxIzg0cDgpGcNjsEBypm+LmhO12fzgeXgZFOzJZACEWHESNyedSIKgBQBJe7XMB5Ij8wW9PxMkXOcRQOhwcQygDiRAAhPwocyTIzVXsFaQhcaeVpxaQpTKWPjyF8bcz1ZrtbiwHdHs9iBAMpI8kaVSazSKLQKrRBhbaxZLpT7AsJKW7wzzPVqZVg4GnSGHVT0eSWzmXTT80wxYdUkWwCCS43aBbhnBD7W208JhOUICZnCBjfpq7WXrWuS3SAASOWWkhtoeZlnLRt9v7qCmQ5euPKpZPOAAqWBuL0jtoP-GJfYAjBnVXQYyRQhEpLZ4x7JO-3TzyAAPKkfWRIgLmDAgnj7e9VTOSRAyRXYJUDaItAyIgGR-ZliHEIgGG2ZEbmBYEMNcSsdzON9t2gs5-0AtwwAAEUkewiFDZUqNcWDSQiPZEOtMApDyWJH3EOgAH1gwcdCyOhLCcLwgiiOk5wy1Ld0VOcABfBZwxHaoxwnHgp2nZ1-TgRd3RMgkADFdjeLEhgwyRLxQNcSDvNiRSIVAmxfNUv0o6DH0VXyKI-LN-LCkUaJlYDQNgiCSCg9jqTg7iEKQ-gULQsBSOS1xZNwiJ8MI4jy1K9ToQq5TjS08xhzoUc4HHChDMTGdU0pczl0s8gbLsj5IqcmVrzcpLmS8nztlC0qgtjEKItK1xpqU6FoqAkDJDAhKlXPdjOJcNLeLjTKg2y3K8oK+SSpW5TdtVZa8vOOAAJlRjmNYu7oP2+CjuiAShJYETxMMcQpMey6ioUxbqqUqqSLUmqyw07owA0gBdIA", # nolint
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
#      title = "Update Entity",
#      f7SingleLayout(
#        navbar = f7Navbar(title = "Update action sheet instance"),
#        f7Segment(
#          f7Button(
#            inputId = "goButton",
#            label = "Go!"
#          ),
#          f7Button(
#            inputId = "update",
#            label = "Update config"
#          ),
#          f7Button(
#            inputId = "reset",
#            label = "Reset"
#          )
#        )
#      )
#    ),
#    server = function(input, output, session) {
#      observeEvent(input$goButton, {
#        f7ActionSheet(
#          grid = TRUE,
#          id = "action1",
#          buttons = list(
#            list(
#              text = "Notification",
#              icon = f7Icon("info"),
#              color = NULL
#            ),
#            list(
#              text = "Dialog",
#              icon = f7Icon("lightbulb_fill"),
#              color = NULL
#            )
#          )
#        )
#      })
#  
#      observeEvent(input$update, {
#        updateF7Entity(
#          id = "action1",
#          options = list(
#            buttons = list(
#              list(
#                text = "Notification",
#                icon = f7Icon("info"),
#                color = NULL
#              )
#            )
#          )
#        )
#      })
#  
#      observeEvent(input$reset, {
#        updateF7Entity(
#          id = "action1",
#          options = list(
#            buttons = list(
#              list(
#                text = "Notification",
#                icon = f7Icon("info"),
#                color = NULL
#              ),
#              list(
#                text = "Dialog",
#                icon = f7Icon("lightbulb_fill"),
#                color = NULL
#              )
#            )
#          )
#        )
#      })
#    }
#  )

## ----eval=TRUE, echo=FALSE----------------------------------------------------
card(
  shinyMobile:::create_app_link(
    "NobwRAdghgtgpmAXGKAHVA6ASmANGAYwHsIAXOMpMAdzgCMAnRRAVwhiLdIAoAdMAPQsAzgwEAbAJZ0BWCdIZQGATwHCAFpIjKAskTqTxcfgEpeEWo2ZbhpKOPF8IAAmf8NW3fsPG851wxwqETCzgC8zgR8YOqkpKjCiAICDFrkDABmUARwGADmkqTqLHQYkkQpaXCZ2XAAtNRQwjB1BIoQAqbmZhDmUoxKytwe2j39iirDmtp6BkY95iPKAILoTq4skuHOGQDsAApQeXDrrs6khUbb-ADiUCzHwvy4-md7AMpaeUYAMlDKnB4rzOzmgADc6EptnsAHJQCFKbgXUhXCL8PZ3B6+EwvFwgna7d5wPLwMinfEEgBCLDiJHJFOcWlQNIAkgATa5gFioNlQcjPYEM8RQOhwcScgCqPL5cGcmOO-EFFJxSreu2ptIg9IpTNZHLRYECwjgpAFeIZzmFovFBqwcGNprAqpBPWVuIpe0p4iIBAA1tq1fKTs6zpJ9W4wDBlHl7gq-OaGaRlKhZQbjTBJARJAwCEYzRbXGD7CxU84AKwABndBboRAYbOqAGEiN6GJyAMQAJgAjABOABsGQAzPma3WGwwAOphorbbtVkOF4twABiJFInwAXqWACzd6sWoviEsAFTgAA9SM3Wx2ewPh6OLVaxWfL5zYJwyM4iBlnMIiPARRfIqCYuqqrpnBBKp4saDBgtU0JsAQFx0rqpC4N+NLMuhf72sI5QQCYzggIK+iwfBACi8FkmhAAk3K8uQGEkaBoJwNQAD6R7OAAPHUzi7GWqoMTKK67BRZCFEMIZhpyUYxlij74kQqAoRAoQRFItgBiC7bODoIikM4orGSatAUM4FbOFAEAct2i7OEeJbbBA7FcfYzgCM485Vm4rEgk5cCvkZESoE05AVtwrmcUeGH8AApKYB5CiKL4XiFEYwuxlqpeIACEIEWhBYEJgAvsVfkgmR1SUdRPB0UaJrMcJ0rkGJEnItJ-mMuG-DybGvjJVVqkERplqSNpDmBdslaed5FYLt1S7HkF6WcpWiXxgWOXWsF74cFw36-v+gHTHkhUMhVrgVeVryld0YClQAukAA", # nolint
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
#      title = "Gauges",
#      f7SingleLayout(
#        navbar = f7Navbar(title = "f7Gauge"),
#        f7Segment(
#          f7Button(
#            inputId = "update",
#            label = "Update Gauge"
#            ),
#          f7Button(
#            inputId = "reset",
#            label = "Reset"
#            )
#        ),
#        f7Block(
#          f7Gauge(
#            id = "mygauge",
#            type = "semicircle",
#            value = 50,
#            borderColor = "#2196f3",
#            borderWidth = 10,
#            valueFontSize = 41,
#            valueTextColor = "#2196f3",
#            labelText = "amount of something"
#          )
#        )
#      )
#    ),
#    server = function(input, output, session) {
#      observeEvent(input$update, {
#        new_val <- 75
#        updateF7Entity(
#          id = "mygauge",
#          options = list(
#            # Must be between 0 and 1
#            value = new_val / 100,
#            valueText = paste0(new_val, "%"),
#            labelText = "New label!"
#          )
#        )
#      })
#  
#      observeEvent(input$reset, {
#        updateF7Entity(
#          id = "mygauge",
#          options = list(
#            value = 50 / 100,
#            valueText = "50%",
#            labelText = "amount of something"
#          )
#        )
#      })
#    }
#  )

## ----eval=TRUE, echo=FALSE----------------------------------------------------
card(
  shinyMobile:::create_app_link(
    "NobwRAdghgtgpmAXGKAHVA6ASmANGAYwHsIAXOMpMAdzgCMAnRRAVwhiLdIAoAdMAPQsAzgwEAbAJZ0BWCdIZQGATwHCAFpIjKAskTqTxcfgEpeEWo2ZbhpKOPF8IAAmf8NW3fsPG851wxwqETCzgC8zgR8YOqkpKjCiAICDFrkDABmUARwGADmkqTqLHQYkkQpaXCZ2XAAtNRQwjB1BIoQAqbmZhDmUoxKytwe2j39iirDmtp6BkY95iPKAILoTq4skuHOGQDsAApQeXDrrs6khUbb-DrKzmio-Lj+Z3sAylp5RgAyUMqcPBeZ2c0AAbnQlNs9gA5KDgpTcC6kK4Rfh7b6SWymZ4uYE7XZvOB5eBkU54-EAIRYcRIZPJzi0qGpAEkACbXMAsVCsqDkJ5A+niKB0ODiDkAVW5vN8AuBJhx9Mp1NItNleMZLPZqLAgWEcFI-NxiqFIrF2qwcD1BrAatcPXJ8rV6MxgKNioZWrcYBgymIZGypGEhvdZw4rLgHL9dgIgeDIecQvQ4iGAEZEABmXA7Ngx8oQbiSEzOEC2+nO2wAcQYnFQdPj50uEYi3wAogAVNstrBvYCSAC6CvrZ0TqGT3DTKYADFmMjmLrSAFZF8ukZnkGDcIxxarCYALvsme1Do8hgC+J-pF6PjtxeoYoOqULneYLECZpCzAPfWb1wmEeaLEs3RXZkIHDAAPAtPX4KMAyDPA3Ddes7AYY5SA5ABiH1YJjeCs1LY1hVFbY2ywcUWwvAV9DvB8WwfUkNVIAASLkeXILMgPJVjpQAMV2FsyEKIZSxgkho1jPwkLOIhUHnCBQgiKRbDrPETWIiIeOWb43hbUsLztAVzwFKi6BouA6IoHhGKY3V9Q4tVuPIPiBKRYSpNcUT-VwuNyRkuSFITF0VOBNSzWcUjyL0tULyMt0XlPbowFPPsgA", # nolint
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
#      f7SingleLayout(
#        navbar = f7Navbar(title = "f7List"),
#        f7Segment(
#          f7Button(
#            inputId = "update",
#            label = "Update"
#          ),
#          f7Button(
#            inputId = "reset",
#            label = "Reset"
#          )
#        ),
#        f7List(
#              id = "mycontacts",
#              mode = "contacts",
#              lapply(1:3, function(i) {
#                f7ListGroup(
#                  title = LETTERS[i],
#                  lapply(1:10, function(j) f7ListItem(letters[j]))
#                )
#              })
#            )
#      )
#    ),
#    server = function(input, output, session) {
#      f7ListIndex(id = "contacts",
#                  target = "#mycontacts",
#                  label = TRUE)
#  
#      observeEvent(input$update, {
#        updateF7Entity(
#          "contacts",
#          options = list(
#            label = FALSE
#          )
#        )
#      })
#  
#      observeEvent(input$reset, {
#        updateF7Entity(
#          "contacts",
#          options = list(
#            label = TRUE
#          )
#        )
#      })
#  
#    }
#  )

## ----eval=TRUE, echo=FALSE----------------------------------------------------
card(
  shinyMobile:::create_app_link(
    "NobwRAdghgtgpmAXGKAHVA6ASmANGAYwHsIAXOMpMAdzgCMAnRRAVwhiLdIAoAdMAPQsAzgwEAbAJZ0BWCdIZQGATwHCAFpIjKAskTqTxcfgEpeEWo2ZbhpKOPF8IAAmf8NW3fsPG851wxwqETCzgC8zgR8YOqkpKjCiAICDFrkDABmUARwGADmkqTqLHQYkkQpaXCZ2XAAtNRQwjB1BIoQAqbmZhDmUoxKytwe2j39iirDmtp6BkY95iPKAILoTq4skuHOGQDsAApQeXDrrs6khUbb-Hv76kSkRABCDETUwtX8uP5newDKWjyRgAMlBlJweD8zs5oAA3OhKbZ7AByUHhSm4F1IVwiNwO90eLzeHwYpm+LmhO12fzgeXgZFOlKpTxYcRIjKZzi0qFZAEkACbXMCPPJAuB3B5EL5QzniKB0ODiIUAeVQFGcqAJUrAMuhJnJnOZrMeEA5TO5fMFuLALFQ-Kg5GlFMNcoVSutAFU7Q7fLqzj0mQH-T99T8SbDqki2AQLuyLaRcM4ITyE84PsJhOUICZnCAZfpw3AAKIRhnxgAkIrFEseibzzt++MlRPe1TNZ0kVrcYE1ksYxOqAEYnYainB4EL7QwANYjzmkZRqoWoI6+A2c3uPUIRKS2dvQ3c8FgMd3d2LxRLJAj8iAYDKKeDUIgz3ZlCqoOU5e7ifnVNTBBhSGEOpBwABgAJgAFgADzAqCQIwAArVA8jJP0D0kPdj1PfhzwSJIBGvW971gOAnxfN8BA-Wpv1-MRhAAoCQIgmC4MgupwKQlC0IbJlD24bChTwy9CJvO8HzI59p1fcoqM-OBaL-BjnyYtjYJYuoAGYuNQvxeMNVwCDQWMXGtHQ4EiZQCCkCBdKDQN1yZIoWBgOht0ifczlwuJ8KvMSSMfKSZPfeTFPoxjgLUtiEOQ3THM5byLwIojxNI8jpMo6ivyIH8lIi5ioPU+DONiudDUS3zROIiT0uCuSaJyuj-xUyKWKK9jtNKnV9NcezgwbABfBYGwLaoIxLCgeArW17XIOs-Rmn0ADFdiLMhCiGdDu03fRXlbBhhz0w0iFQEz3P4rbXAXJdrWCHlUDKjcTttfYRHUbYABUsA9It4qcogcoRBhtiW5ZgT+X7Lo1LVzswyEerOfjBOtYTkv8mqgsy0LGrylqCtYjTBx0roEd6v7KWc1zYb3CqRJSgLJIo2SsoUnHwrxqLCeJsA+r1P0+qGn4Bu6MABoAXSAA", # nolint
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
#      title = "f7PhotoBrowser",
#      f7SingleLayout(
#        navbar = f7Navbar(title = "f7PhotoBrowser"),
#        f7Segment(
#          f7Button(
#            inputId = "togglePhoto",
#            label = "Open photo"
#          ),
#          f7Button(
#            inputId = "update",
#            label = "Update"
#          )
#        )
#      )
#    ),
#    server = function(input, output, session) {
#      observeEvent(input$togglePhoto, {
#        f7PhotoBrowser(
#          id = "photobrowser1",
#          theme = "dark",
#          type = "page",
#          photos = list(
#            list(url = "https://cdn.framework7.io/placeholder/sports-1024x1024-1.jpg"),
#            list(url = "https://cdn.framework7.io/placeholder/sports-1024x1024-2.jpg"),
#            list(url = "https://cdn.framework7.io/placeholder/sports-1024x1024-3.jpg",
#                 caption = "Me cycling")
#          ),
#          thumbs = c(
#            "https://cdn.framework7.io/placeholder/sports-1024x1024-1.jpg",
#            "https://cdn.framework7.io/placeholder/sports-1024x1024-2.jpg",
#            "https://cdn.framework7.io/placeholder/sports-1024x1024-3.jpg"
#          )
#        )
#      })
#  
#      observeEvent(input$update, {
#        updateF7Entity(
#          "photobrowser1",
#          options = list(
#            type = "popup",
#            popupPush = TRUE,
#            toolbar = FALSE,
#            photos = list(
#            list(url = "https://cdn.framework7.io/placeholder/sports-1024x1024-1.jpg")
#            ),
#            thumbs = list("https://cdn.framework7.io/placeholder/sports-1024x1024-1.jpg")
#          )
#        )
#      })
#    }
#  )

## ----eval=TRUE, echo=FALSE----------------------------------------------------
card(
  shinyMobile:::create_app_link(
    "NobwRAdghgtgpmAXGKAHVA6ASmANGAYwHsIAXOMpMAdzgCMAnRRAVwhiLdIAoAdMAPQsAzgwEAbAJZ0BWCdIZQGATwHCAFpIjKAskTqTxcfgEpeEWo2ZbhpKOPF8IAAmf8NW3fsPG851wxwqETCzgC8zgR8YOqkpKjCiAICDFrkDABmUARwGADmkqTqLHQYkkQpaXCZ2XAAtNRQwjB1BIoQAqbmZhDmUoxKytwe2j39iirDmtp6BkY95iPKAILoTq4skuHOGQDsAApQeXDrrs6khUbb-PtEqCyo-Lj+Z3sAylp5RgAyUMqcPBeZ2c0AAbnQlNs9gA5KDgpSnYGuC6kK4Rfh7W73R5gIFnEzPFxI95wPLwMiI4m7ABCLDiJEpSOcWnupAAkgATa5gUhEPJfXy4NxEpmucRQOhwcTcgAqfIFzixD34eOBBNVrxpdN5EEZSJZdM53IeHKg5CewtFZ3Fkul6LAAFVUKbyIq7sqwD0mV78S91UThNVQdUoWwCBcGQbSEKAayhYHhMJyhATM4QHjY3SACSBUIAHjqzkCEA51X2qQpUaz5AAHqQfa4M3RAwxgwBRYOViCs6vyoxC9MizVK1B61ySLn24LYp4a5GXODcnTKHaSBi2ZzTj2Eq17GVwOtjs78WukC03d2oSIkchkWdDpn8GWaUKSUIwFcZNcbrdXuDBhghTZZxhFoJQAEIVQffEd1FACIQuGB9zrAB5OlWWiXMumghtnAAX1wpsW3bTseCrE0zTgAcNQo8gADFdjbMhCiGOdmUnNwwF-e8rTuCMIFCCIpFsI9XFAyRUDgOUAGFxBCRcIhlLAHTbWCrSgCBJBgSjtjo5ZvjeVS2NcAg5MDFCIDbYQCDQBTnCUlS1NFABiZxpJvChSGcGARC84gyCgLRznURduOg4FXPFf46XA2LjOvMhPO2AByPMOUkUFInFRMwn4biwAAPni1w0oyrKmmEXKwFBSQ4GofgivC0VSsy0yKqq1Ajl8RqrStFrypy-gwQhBgGuK5r0ta7LKqGuERrqOg8gavMBEmnrer6yaBpmyA5qUOotAgaoxqajaSq2trBp5BcGpHFa1vGzaysunbUjyWITrOs683AupC2+LQAGtziILL5M3S9nD+9avr6qBtqqqQIGB39WjM7rZPklaoBh2HgXujLcbxgnQSJ77VsJx6zn6l6Oq61oPLvQqqfxi7pqqug5IIQGGuhOqEtvLyMGFkmyY20WqYl07qYp0n4tF5K2Nw1xcIIl48O6MA8IAXSAA", # nolint
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
#      title = "Popup",
#      f7SingleLayout(
#        navbar = f7Navbar(
#          title = "f7Popup"
#        ),
#        f7Segment(
#          f7Button(
#            inputId = "toggle",
#            label = "Toggle Popup"
#          ),
#          f7Button(
#            inputId = "update",
#            label = "Update Popup")
#        )
#      )
#    ),
#    server = function(input, output, session) {
#      output$res <- renderPrint(input$text)
#  
#      observeEvent(input$toggle, {
#        f7Popup(
#          id = "popup",
#          title = "My first popup",
#          f7Text(
#            "text", "Popup content",
#            "This is my first popup ever, I swear!"
#          ),
#          verbatimTextOutput("res")
#        )
#      })
#  
#      observeEvent(input$update, {
#        updateF7Entity(
#          id = "popup",
#          options = list(
#            swipeToClose = TRUE,
#            animate = FALSE,
#            closeOnEscape = TRUE,
#            # Content must contain the popup
#            # layout!!!
#            content = '<div class="popup">
#              <div class="view">
#                <div class="page">
#                  <div class="navbar">
#                    <div class="navbar-bg"></div>
#                    <div class="navbar-inner">
#                      <div class="title">Popup</div>
#                      <div class="right">
#                        <!-- Link to close popup -->
#                        <a class="link popup-close">Close</a>
#                      </div>
#                    </div>
#                  </div>
#                  <div class="page-content">
#                    <div class="block">New content ...</div>
#                  </div>
#                </div>
#              </div>
#            </div>'
#          )
#        )
#      })
#    }
#  )

## ----eval=TRUE, echo=FALSE----------------------------------------------------
card(
  shinyMobile:::create_app_link(
    "NobwRAdghgtgpmAXGKAHVA6ASmANGAYwHsIAXOMpMAdzgCMAnRRAVwhiLdIAoAdMAPQsAzgwEAbAJZ0BWCdIZQGATwHCAFpIjKAskTqTxcfgEpeEWo2ZbhpKOPF8IAAmf8NW3fsPG851wxwqETCzgC8zgR8YOqkpKjCiAICDFrkDABmUARwGADmkqTqLHQYkkQpaXCZ2XAAtNRQwjB1BIoQAqbmZhDmUoxKytwe2j39iirDmtp6BkY95gSFknChADx1ztDwwtyogUuoCxAjygCC6E6uLJLhzhkA7AAKUHlwV67OpIVGd-wAogAPVBQCAAEygdF+wjgSgI6joSn4uH8n0eAGUtHkjAAZKDKTg8VGfLZQABuiIYd0eADlyZSPiTXN9SL8IvwMbCGPDKc5qIV1F9Unk3gxkcSmcISnSKUpqQ90dL6UpGUzXJy4QiVRK1a5JGC-mAYZqAIzItwuXUkuDA0EQqFwO4AFSwAFV-jqmT0rd6vSjLSTOXl4GRVYGHgAhFhxEhhplaVDRgCSBvZYBYqAh5HFAd14khcHEhtdmag2bAntcJn9VseUZjEDjJITydTbjAgRhpBzVtc+bohcNWFWcG7FdzJN9k5rTLr4iIBAA1k37gquTylE7haLuHYGG9SCnDcbueozWAp58TM4AKQAPhvq4AEvq4AB5CDo9fqbjVz2PHFJFsFd83QcQhhhABHAB9ewSDybglm+VZq3uNgCG+WNJGvEBKzRB5ANsJNyBgRDllWYBJAAXUvEkAF9aOca970fR4ADFOHBX8Z3DCN5yXFdUGiGkiCKLF7k4sEugnJjbwfVcRNIDi2DBX8JV9P9LRhBgyWqal0MwxsW1IXBnEJRNSBwiV9G03T-l00NjIAEgzLM4FM3CZNcss4DYh5-jIQohjw-Vj2-c8eKZIhUEM0IIikYC8NcMEgMhIx61IEg7jYs4cXRD0ZKrT1LwYiVrLoWy4HsigeGcztRw8z1vPIPyApZYLCucUK0xPeEIrw6LYruBKiU65LUodDKsoiF13TwxiSt9OjujAOiqKAA", # nolint
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
#  cities <- names(precip)
#  
#  shinyApp(
#    ui = f7Page(
#      title = "Expandable searchbar",
#      f7SingleLayout(
#        navbar = f7Navbar(
#          title = "f7Searchbar with trigger",
#          subNavbar = f7SubNavbar(
#            f7Searchbar(
#              id = "search1",
#              expandable = TRUE
#            )
#          )
#        ),
#        f7Segment(
#          f7Button(
#            inputId = "update",
#            label = "Update"
#          ),
#          f7Button(
#            inputId = "reset",
#            label = "Reset"
#          )
#        ),
#        f7Block(
#          f7SearchbarTrigger(targetId = "search1")
#        ) %>% f7HideOnSearch(),
#        f7List(
#          lapply(seq_along(cities), function(i) {
#            f7ListItem(cities[i])
#          })
#        ) %>% f7Found(),
#        f7Block(
#          p("Nothing found")
#        ) %>% f7NotFound()
#      )
#    ),
#    server = function(input, output) {
#      observeEvent(input$update, {
#        updateF7Entity(
#          id = "search1",
#          options = list(
#            disableButton = FALSE
#          )
#        )
#      })
#  
#      observeEvent(input$reset, {
#        updateF7Entity(
#          id = "search1",
#          options = list(
#            disableButton = TRUE
#          )
#        )
#      })
#    }
#  )

## ----eval=TRUE, echo=FALSE----------------------------------------------------
card(
  shinyMobile:::create_app_link(
    "NobwRAdghgtgpmAXGKAHVA6ASmANGAYwHsIAXOMpMAdzgCMAnRRAVwhiLdIAoAdMAPQsAzgwEAbAJZ0BWCdIZQGATwHCAFpIjKAskTqTxcfgEpeEWo2ZbhpKOPF8IAAmf8NW3fsPG851wxwqETCzgC8zgR8YOqkpKjCiAICDFrkDABmUARwGADmkqTqLHQYkkQpaXCZ2XAAtNRQwjB1BIoQAqbmZhDmUoxKytwe2j39iirDmtp6BkY95iPKAILoTq4skuHOGQDsAApQeXDrrs6khUbb-ADK1JKo1fy4-md7N1p5RgAyUMqcPFeZ2c0AAbnQlNs9gA5KDgpTcC6kK4Rfjve6PBimF4uYE7XY3OB5eBkU54-EAIRYcRIZPJzi0qGpAEkACbXMAsVCsqDkZ5A+niKB0ODiDkAVW5vN8AuBJhx9Mp1NItNleMZLPZqLAgWEcFI-NxiqFIrF2qwcD1BrAatcPXJ8rV6Ie1TpwMkWrcYGEGKefiNeKIqAuJFCESktjdeLBkjyvPKLnDkkjtrxFGFRk9ADFlt8bgBRVN2hWK5yoI5aeMkbYRwEBxXpuiZ7YAFSw4vzJdLzlFHIwPpdDDq5YK0BDvTwbnr9IIUgIAGsM3BW+3C9O5anHevnEL0OIhgBGRAAJgADLgdmwCOPuAQTM4QEX8TcpKyTk-XHsAMJKVlRxVIiizjCKgqRkBk0Qvh6y4AKTCM8kT2t2zhIYqqF4gAvuhdoCkhW6uHqDCgtUUJXjeGqkBeAJMqQ96PgG+iEcR+bEaSFEACRcjy5AXvR5JcdKWa7PmZCFEMqbuL6WL+oqQbjmGO7JnW3YgXAcCegep7nk+wivpa+zVAAapIcDUNsx5dvSIG1BS+q0BQ2yaZZ5JQNSQZCsoK4ds5eLCG0RAOBCDA1kp-5ptATbqdsOZ5mu3b4aWI6VuOIUptuwKkMojwcqBRB5LqwhBYayE9hFzYRG2HZPglir5R6qXKchGSGGaXrEOILAwBA8EychDBENQCkACzVZuaroVhAoCox1TMaxPAcbq+q8WqAnkEJIlIuJ26SYOxX0nJCYKbWYUEY8UURENWk+cCunQcIBkMMZpkcq5Kr7Yq1k5LZpD2YmzgAKzaelzhve5fzRbmBY3Wcfn9YFkJJmlJWNuVziVXFpY1fSSVjgmDWnWcmXZdqdAsA4+o9TDwKoxd6OrtV1POHVnonR+OwtRy7WdROTMBANCkHqN27YShAqTbiGHdGAGEALpAA", # nolint
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
#      title = "Swiper",
#      f7SingleLayout(
#        navbar = f7Navbar(title = "f7Swiper"),
#        f7Segment(
#          f7Button(
#            inputId = "update",
#            label = "Update"
#          ),
#          f7Button(
#            inputId = "reset",
#            label = "Reset"
#          )
#        ),
#        f7Swiper(
#          id = "swiper",
#          options = list(
#            navigation = list(
#              enabled = FALSE
#            ),
#            pagination = list(
#              enabled = TRUE,
#              el = ".swiper-pagination",
#              clickable = TRUE
#            )
#          ),
#          lapply(1:20, function(c) {
#            f7Slide(
#              f7Card(
#                title = sprintf("Slide %s", c)
#              )
#            )
#          })
#        )
#      )
#    ),
#    server = function(input, output) {
#      observeEvent(input$update, {
#        updateF7Entity(
#          "swiper",
#          options = list(
#            speed = 100,
#            slidesPerView = 2,
#            spaceBetween = 10,
#            autoplay = TRUE,
#            scrollbar = list(
#              enabled = FALSE
#            ),
#            pagination = list(
#              type = "progressbar",
#              enabled = TRUE
#            ),
#            grid = list(
#              fill = "columns",
#              rows = 4
#            )
#          )
#        )
#      })
#  
#      observeEvent(input$reset, {
#        updateF7Entity(
#          "swiper",
#          options = list(
#            speed = 400,
#            slidesPerView = "auto",
#            spaceBetween = 50,
#            autoplay = FALSE,
#            scrollbar = list(
#              enabled = TRUE
#            ),
#            pagination = list(
#              type = "bullets",
#              enabled = TRUE
#            ),
#            grid = list(
#              fill = "column",
#              rows = 1
#            )
#          )
#        )
#      })
#    }
#  )

