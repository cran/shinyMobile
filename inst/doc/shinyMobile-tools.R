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
#  
#  preview_mobile(appPath = system.file("examples/gallery/app.R", package = "shinyMobile"), device = "iphoneX")
#  # This also works with a remote app url hosted on shinyapps.io ...

## ----eval=TRUE, echo=FALSE----------------------------------------------------
card(
  shinyMobile:::create_app_link(
    "NobwRAdghgtgpmAXGKAHVA6ASmANGAYwHsIAXOMpMAdzgCMAnRRAVwhiLdIAoAdMAPQsAzgwEAbAJZ0BWCdIZQGATwHCAFpIjKAskTqTxcfgEpeEWo2ZbhpKOPF8IAAmf8NW3fsPG851wxwqETCzgC8zgR8YOqkpKjCiAICDFrkDABmUARwGADmkqTqLHQYkkQpaXCZ2XAAtNRQwjB1BIoQAqbmZhDmUoxKytwe2j39iirDmtp6BkY95iPKAILoTq4skuHOGQDsAApQeXDrrs6khUbb-DrKzmio-Lj+Z0SoFyShEVK23KgsDgAKkQsHAMoENNtAVgAKoAUVwzgAJkoANbbABiywAMgBlOEmZ4uM57XFaPJGbFQZScHgvM7OaAANzoSm2ewAclAWUpTgzXBdSFcIvx9gDxOciM5QeC4BonvT+eooJIGFIIHBMTj8YrXITdZKiOJWQx2btgUaTXz+cFhIVyi4RWA6EQ4kQYArifydrtsVpUdxxFA6HAJU6-RB0QBGJ7OdSBDLXGJxBJJATUDP5IhECm5YgesD6r38vYRgNBkNhtxgMvOABMsfjYKTsXiiWSGeoWZzRgw+a6xb1RO9AGJnDAVS5iGQKKQDaXJL8Da4bHBSFDYQjl85bAwSHkN-Dh97kZImZIkdUvs5oUftxxL0n4EjJFBPSfnEH0OIhlHEABmREMjYAgPggbgACsTGcEBt1cBdbAASXIGBrQ-QVhU-Nd0mEYAIIAXWPD8AkkPJYiTLBSPI8gAA85z8QcT2fV8zUQ6donsJQYAAfQyQxxAHYjnB6D8AF8RP5CS9ReItXGEaomWqdkQLA7gtH+UhEVpDTEXk4Q7RIaDYOLfR5IYRS-lSMg1IgDSABJ3gYEwpLcEy6DMxS4UU6z1JYUgHNIBhEWM71HNxOxSBEZwAB46mcSRExs+zHOg-gSH4eddgAEVfcQczQs5aPXCJUCachuAAckc+LhAqxEwoikRZJPUhlFQTUnXsap6INFzxJeUTujAUT8KAA", #nolint
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
#      options = list(pullToRefresh = TRUE, dark = FALSE),
#      f7SingleLayout(
#        navbar = f7Navbar(
#          title = "Pull to Refresh",
#          hairline = FALSE
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

## ----eval=TRUE, echo=FALSE----------------------------------------------------
card(
  shinyMobile:::create_app_link(
    "NobwRAdghgtgpmAXGKAHVA6ASmANGAYwHsIAXOMpMAdzgCMAnRRAVwhiLdIAoAdMAPQsAzgwEAbAJZ0BWCdIZQGATwHCAFpIjKAskTqTxcfgEpeEWo2ZbhpKOPF8IAAmf8NW3fsPG851wxwqETCzgC8zgR8YOqkpKjCiAICDFrkDABmUARwGADmkqTqLHQYkkQpaXCZ2XAAtNRQwjB1BIoQAqbmZhDmUoxKytwe2j39iirDmtp6BkY95iPKAILoTq4skuHOGQDsAApQeXDrrs5EqKTlEKERUrbcACZKANbbAGLLADIAygCiJlw-jOV1IRm2-B0ymcaFQ-CBLjOex+WjyRi+UGUnB4wLOzmgADc6EptnsAHJQIlKU541yg8ERfjLAg5YShR5wAmSHLOLQZIjw3G09RQSQMKQQOAfb7-BG0s4aKCPIjUbYAFSwAFU-kLXIDdc4AMTOGCilzEMgUUgGgnVYlXGBquAAD1IAHkWPFPdE+QKwD08QHnPrEcJqraGKS2AQriRuFpUJ7cOdPYnSCZnCAhdi0wASX3OAA8dWcgQgHIY+1SZG4WcReITntzHK5OQAkhB+UKAL5B7vdMDdgC6QA", #nolint
    "app",
    header = FALSE
  ),
  full_screen = TRUE,
  style = "width: 393px; margin: 0 auto; float: none;"
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
#          hairline = FALSE
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
    "NobwRAdghgtgpmAXGKAHVA6ASmANGAYwHsIAXOMpMAdzgCMAnRRAVwhiLdIAoAdMAPQsAzgwEAbAJZ0BWCdIZQGATwHCAFpIjKAskTqTxcfgEpeEWo2ZbhpKOPF8IAAmf8NW3fsPG851wxwqETCzgC8zgR8YOqkpKjCiAICDFrkDABmUARwGADmkqTqLHQYkkQpaXCZ2XAAtNRQwjB1BIoQAqbmZhDmUoxKytwe2j39iirDmtp6BkY95iPKAILoTq4skuHOGQDsAApQeXDrrs5EqKTlEKERUrbcACZKANbbAGLLADIAygCiJlw-jOV1IRm2-B0ymcaFQ-CBLjOex+WjyRi+UGUnB4wLOzmgADc6EptnsAHJQIlKU541yg8ERfjLAg5YShR5wAmSHLOLQZIjw3G09RQSQMKQQOAfb7-IWuQFy5wAYmcMFFLmIZAopEVmwA8ix4obogQlI9TAjaTtdgAhcREAgvbgACQAKjovsNUKkyBlogBJdlwYQvUgXRDOACkwnhznIAA9SAajTiwCJqstjmRY1oJVKIq6sABVAEmMuWs49eUV4TVAnVUlsAhXEjcLSoQ24c6GjukEzOEBCoXY3sAEnTDEz2ucAB46s5AhAOQxXXBE22IGOOVycv6IPzRxyQ2HUFWzkKVVnqlByDDImbzhBxND+QxnEfQxdhz3DaPTQxHlnedF2XIt-W4QdETxQIAEcNy3TluTgPcDw-E8zzxPYAGEzRpWl+FdTRQkkUIoGcYRJBgVBwX-QDqEKdRnGo9U4zXUgKytOhDXvADQlNFx7GEIhIhIOwtDjdQ4DFc5qBcSSoGXDjaX5Ih0i7e5SGcLk4GoLtKKOOAuyIN8oG0c4igbOAjHgMgMH4RUMOcABfM8nO6MAnIAXSAA", #nolint
    "app",
    header = FALSE
  ),
  full_screen = TRUE,
  style = "width: 393px; margin: 0 auto; float: none;"
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
#          hairline = FALSE
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
    "NobwRAdghgtgpmAXGKAHVA6ASmANGAYwHsIAXOMpMAdzgCMAnRRAVwhiLdIAoAdMAPQsAzgwEAbAJZ0BWCdIZQGATwHCAFpIjKAskTqTxcfgEpeEWo2ZbhpKOPF8IAAmf8NW3fsPG851wxwqETCzgC8zgR8YOqkpKjCiAICDFrkDABmUARwGADmkqTqLHQYkkQpaXCZ2XAAtNRQwjB1BIoQAqbmZhDmUoxKytwe2j39iirDmtp6BkY95iPKAILoTq4skuHOGQDsAApQeXDrrs5EqKTlEKERUrbcACZKANbbAGLLADIAygCiJlw-jOV1IRm2-B0ymcaFQ-CBLjOex+WjyRi+UGUnB4wLOzmgADc6EptnsAHJQIlKU541yg8ERfgASQgqBYpGc7MMwnhuNp6igkgYUggcA+33+fNcgKlzlIRCI4mJDFJuwAKgqldTZa5gsJCtcIWA6EQ4kQYLzEbSdrsvloXtxxFA6HBxEa7RA3gBGeHOdSBDJG2LxRLJajh-IKtG5YgWsAyq20vYeh1Ol1uxlgFPOABMvv9cEDmeDCSSAnD1EjRGjGFjXUT0oR1oAxM4YIKXMQyBRSLK9gBhJSPGm0+lizNaNmkAAkSxZGSIlutrgJ1WJVxgargAA9SAB5dlT6JaBc8+MJ63JyQPHU2re77iT9lMx5G8i731p11G++9+NN5dkSkR5qkfVln1fTN2mOH08GcL8MzcMAsCgCBjl9GAtG2AAGXA2ygbdthzPCCXsFhx2cL08NsIIcIwL0L0A3YfnIdBQKfUgXyNGi2IYWC8IQo0WKCVBqgwrCIlw-DCIiL0pNI8RyO2ABWHprUYvEByHEc8THI0OOnJ1bBZKd+wFNC4EeJdl1XBh10kTcd33Q92WiIzSDM1Djis+NZTUs5-MY4Rqls0k2AIK4SDAqc8OxKcTGcEA+Ti9lpxPEJnAAHjqZxAggECGH2VIyGi1K5wgBd-NcFKZ3czyLNfbLcooAqirSUraqaTjwI88zvP8gBfbowAGgBdIA", #nolint
    "app",
    header = FALSE
  ),
  full_screen = TRUE,
  style = "width: 393px; margin: 0 auto; float: none;"
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
#          hairline = FALSE
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

