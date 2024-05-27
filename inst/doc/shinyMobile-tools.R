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
#  
#  preview_mobile(url = "https://dgranjon.shinyapps.io/miniUI2DemoMd", device = "ipadMini")

## ----eval=TRUE, echo=FALSE----------------------------------------------------
card(
  shinyMobile:::create_app_link(
    "NobwRAdghgtgpmAXGKAHVA6ASmANGAYwHsIAXOMpMAdzgCMAnRRAVwhiLdIAoAdMAPQsAzgwEAbAJZ0BWCdIZQGATwHCAFpIjKAskTqTxcfgEpeEAiNJEYAfS3DSUceIAEAHgC0rgGZsCpJIkrtyoUAQA1lAA5nDCuK4McKhEwq4AvK4AcgCqADJ5CVo+RBnZ+YWuUnRluQUJAI4sknCkZQBiAIJ5AMoAognmrsOuHFxlACpYOX0mruYgQyOSPiGSwhgQLC7c1SZzixAjx1XSHt4Y1QAKUKTqwtwmwMAAjAC6b0vDAL5fritrDZbHZJFLCfauQ4nEag1LnVyxUgAeVQgRIfBo9AYtlQEWitlhwlMf1+RxGADc4Ax4fwACwYekABn4f0p1K8COELDoGN4fN4GGAAD0MG8ANQAEn4gzA0tcbLMZOGhPh0S5PP4AileHmsp1hMVx2IZAYZw5wlQprIPgxAFJhAIDBABHAYMICKbURQBMbSKaZPa5YTBkqTgq-r7-ar1RjYRgGJ5qFBhDAMEQGNFHVoXW6PZIvc7I9IBPSAMxyv7HfhxhNJlNpjNZ52u92e8iFkh+4tljDlnVFugh6HDHySAAecAAJpNprM-gDuOtNttxIuICUIVDh8VShyWIFxMJmFByVBDFA6EYMGFIjE4twBywGG5MgPDSNScdJ8k0nuIFJHG4awiEPZgbyiWJbG-VAKG-CwWgecC73if51yIEwh2HEQ4E2WA4g6bp+nfYZoN-bw2EkJo4G4UjiN8dMQmg1DXFoyFK2WVZdgoaI7m4UcIEna9wgg6joMaZpWhnGZ9gOdjoQgOAx1IOTXE-bcIEcZxVzExJklSIo0ISapxJaUgEjGMg6LUkcGNCPFmKQ2JwTY0NjgXIwIB49Q+K0QTHOo3FohMyTMimaTNxU44FKUlTrJOBcAEJAtcW0tFtRIiGoaB4AeHcItc4ckwYCAtGiUJk3IDEsDgKjHCnVx-LlQKZQgIg2hKNhpy0VxaDoLBXCdJRlF0lIMFMOjh1caLlIKn4VNheEd2AZrdWqsFJGsFR+E+WaRt3bwY34UcjEQCs9QSWEElHCdp1C2cJpGQLbDZRa0OWvEZQANSpYQgggbaVMSppTLmSKRhy4Q73KuqMQAEUy-8iCgSdSp6+h+v806dUC-ZAc4izSFk3bjj9ZQAGFbgIbyt0m6FeqYZgHCcFxnp8YR7BgKHLtOQcGo+vn8XDYmPwSKkGAYzI-AsNEIAfASidp7dOIS6JQVXfgcmgS84FcawWIR8QkcnOVjRRmWdDiSHYjlycZJcxXJscIhUBth7Fbih3UM0lnSGiAAvbhueMgWEieoXPe+N3VJUuBDx1mnaaZrTbF9gOg+kUP+bDqko7iuKtHJdZpCMbg6jyRVSXMSwnbsJOdiWfgNC0XR9EMYw8CWFVXwxdRSFIVAjwEAQrXIBgfHCHDog29RuQwIJh60Ufx4IOBE2TGBPA9KBnWJCBFXMapFBUbgm+0RVD6Gk-NG0PQDCMfeNOv5ROnQPgyWaMofAAdhua2-kCUgRgyj8B0MNNAqBpR-GdjLNImQAI8FQCuCYRBqo+CSBoKSAwWJKAiARXosxcB-G-j0UqRg8hQGUJwHg7FoDkjoEoT+X8sgnnoQwN+k0AFAMyPwK4K5dalFQeg9QkDdrqDPM+LQOtMhdHwexDC7FgLiFYYw5BIFWHsOHOtGWwCwB0DatYGAIjJrfzyFoCIuwLyxx0aYiAuCXhynUEkVY3CwC937oPAQ1AvEYGiEQIg0QrzEEMWAeRu0TFmIsXQKxLibG4IAEwOKcTotxA9EBDy8dQHxfiAk4SCbvaEoToQAGJRhniOL6CgM1oThMAoDDSIVXBhQGCpRw4tPKYMIbtFGhdvwMFgY02cnTJocG-Do+AKMoBGOHOIcB4hlDcBeIgUsV1-Ay24AAKwVrTGppAACS5AYAaMVpwqRVRWij2EMAdZbwhkO1NNEXuOisCSAeW0cgMUO7C2GOMyQUBGG7ONBiZwSg7DHXEPk2mucHp0XfIU1wwgqQvUlqsv6a5EFmVcFQ9FCQEXCF+iQLZwx9AIoYJSUII80X7glKiBguNQxQLoCSykfRKRkEpaQalfoEgJ2GDSnoThSAiEWpxLQ6LOW0t1CQFkBVv6w1+YbMqKl3ltEyGEGGAByGl-xhDqtDn6fltwRBwuhKQZQMEdHOCpMpWUBUrLvlJCYMA3w3hAA", #nolint
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
    "NobwRAdghgtgpmAXGKAHVA6ASmANGAYwHsIAXOMpMAdzgCMAnRRAVwhiLdIAoAdMAPQsAzgwEAbAJZ0BWCdIZQGATwHCAFpIjKAskTqTxcfgEpeEAiNJEYAfS3DSUceIAEAHgC0rgGZsCpJIkrtyoUAQA1lAA5nDCuK4McKhEwq4AvK4AcgCqADJ5CVo+RBnZ+YWuUnRluQUJAI4sknCkZQBiAIJ5AMoAognmrsOuHFxlACpYOX0mruYgQyOSPiGSwhgQLC7c1SZzixAjx1XSHt4Y1QAKUKTqwtwmwMAAjAC6b0vDAL5fritrDZbHZJFLCfauQ4nEag1LnVyxUgAeVQgRIfBo9AYtlQEWitlhwlMf1+RxGADc4Ax4fwACwYekABn4f0p1K8COELDoGN4fN4GGAAD0MG8ANQAEn4gzA0tcbLMZOGhPh0S5PP4AileHmsp1hMVx2IZAYZw5wlQprIPgxAFJhAIDBABHAYMICKbURQBMbSKaZPa5YTBkqTgq-r7-ar1RjYRgGJ5qFBhDAMEQGNFHVoXW6PZIvc7I9IBPSAMxyv7HfhxhNJlNpjNZ52u92e8iFkh+4tljDlnVFugh6HDHySAAecAAJpNprM-gDuOtNttxIuICUIVDh8VShyWIFxMJmFByVBDFA6EYMGFIjE4twBywGG5MgPDSNScdJ8k0nuIFJHG4awiEPZgbyiWJbG-VAKG-CwWgecC73if51yIEwh2HEQ4E2WA4g6bp+nfYZoN-bw2EkJo4G4UjiN8dMQmg1DXFoyFK2WVZdgoaI7m4UcIEna9wgg6joMaZpWhnGZ9gOdjoQgOAx1IOTXE-bcIEcZxVzExJklSIo0ISapxJaUgEjGMg6LUkcGNCPFmKQ2JwTY0NjgXIwIB49Q+K0QTHOo3FohMyTMimaTNxU44FKUlTrJOBcAEJAtcW0tFtRIiGoaB4AeHcItc4ckwYCAtGiUJk3IDEsDgKjHCnVx-LlQKZQgIg2hKNhpy0VxaDoLBXCdJRlF0lIMFMOjh1caLlIKn4VNheEd2AZrdWqsFJGsFR+E+WaRt3bwY34UcjEQCs9QSWEElHCdp1C2cJpGQLbDZRa0OWvEZQANSpYQgggbaVMSppTLmSKRhy4Q73KuqMQAEUy-8iCgSdSp6+h+v806dUC-ZAc4izSFk3bjj9ZQAGFbgIbyt0m6FeqYZgHCcFxnp8YR7BgKHLtOQcGo+vn8XDYmPwSKkGAYzI-AsNEIAfASidp7dOIS6JQVXfgcmgS84FcawWIR8QkcnOVjRRmWdDiSHYjlycZJcxXJscIhUBth7Fbih3UM0lnSGiAAvbhueMgWEieoXPe+N3VJUuBDx1mnaaZrTbF9gOg+kUP+bDqko7iuKtHJdZpCMbg6jyRVSXMSwnbsJOdiWfgNC0XR9EMYw8CWFVXwxdRSFIVAjwEAQrXIBgfHCHDog29RuQwIJh60Ufx4IOBE2TGBPA9KBnWJCBFXMapFBUbgm+0RVD6Gk-NG0PQDCMfeNOv5ROnQPgyWaMofAAdhua2-mdmWaRMgAR4JOJQEQCK9FmLgP4gRSBGDKPwHQw00CoGlH8b+PRSpGDyFAZQnAeDsWgOSOgShP5fyyCeUhDA36TTgQgzI-BOgEBXsINI35C4r1QiUdBu11BnmfFoHWmQuhQJgbtDQyNMpST6OxDC7EADEowzxHF9BQGa0I2SkMCDACYilkT7lQPuDEO5d7HHfPIskwgqQvUlv4GWa4jFmVcAQpxCsRiuP3BKHc8IkgCSpFcEe3AE7DC0E4iUHDJArwAJJoRJO+UkJgwDfDeEAA", #nolint
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
    "NobwRAdghgtgpmAXGKAHVA6ASmANGAYwHsIAXOMpMAdzgCMAnRRAVwhiLdIAoAdMAPQsAzgwEAbAJZ0BWCdIZQGATwHCAFpIjKAskTqTxcfgEpeEAiNJEYAfS3DSUceIAEAHgC0rgGZsCpJIkrtyoUAQA1lAA5nDCuK4McKhEwq4AvK4AcgCqADJ5CVo+RBnZ+YWuUnRluQUJAI4sknCkZQBiAIJ5AMoAognmrsOuHFxlACpYOX0mruYgQyOSPiGSwhgQLC7c1SZzixAjx1XSHt4Y1QAKUKTqwtwmwMAAjAC6b0vDAL5fritrDZbHZJFLCfauQ4nEag1LnVyxUgAeVQgRIfBo9AYtlQEWitlhwlMf1+RxGADc4Ax4fwACwYekABn4f0p1K8COELDoGN4fN4GGAAD0MG8ANQAEn4gzA0tcbLMZOGhPh0S5PP4AileHmsp1hMVx2IZAYZw5wlQprIPgxAFJhAIDBABHAYMICKbURQBMbSKaZPa5YTBkqTgq-r7-ar1RjYRgGJ5qFBhDAMEQGNFHVoXW6PZIvc7I9IBPSAMxyv7HfhxhNJlNpjNZ52u92e8iFkh+4tljDlnVFugh6HDHySAAecAAJpNprM-gDuOtNttxIuICUIVDh8VShyWIFxMJmFByVBDFA6EYMGFIjE4twBywGG5MgPDSNScdJ8k0nuIFJHG4awiEPZgbyiWJbG-VAKG-CwWgecC73if51yIEwh2HEQ4E2WA4g6bp+nfYZoN-bw2EkJo4G4UjiN8dMQmg1DXFoyFK2WVZdgoaI7m4UcIEna9wgg6joMaZpWhnGZ9gOdjoQgOAx1IOTXE-bcIEcZxVzExJklSIo0ISapxJaUgEjGMg6LUkcGNCPFmKQ2JwTY0NjgXIwIB49Q+K0QTHOo3FohMyTMimaTNxU44FKUlTrJOBcAEJAtcW0tFtRIiGoaB4AeHcItc4ckwYCAtGiUJk3IDEsDgKjHCnVx-LlQKZQgIg2hKNhpy0VxaDoLBXCdJRlF0lIMFMOjh1caLlIKn4VNheEd2AZrdWqsFJGsFR+E+WaRt3bwY34UcjEQCs9QSWEElHCdp1C2cJpGQLbDZRa0OWvEZQANSpYQgggbaVMSppTLmSKRhy4Q73KuqMQAEUy-8iCgSdSp6+h+v806dUC-ZAc4izSFk3bjj9ZQAGFbgIbyt0m6FeqYZgHCcFxnp8YR7BgKHLtOQcGo+vn8XDYmPwSKkGAYzI-AsNEIAfASidp7dOIS6JQVXfgcmgS84FcawWIR8QkcnOVjRRmWdDiSHYjlycZJcxXJscIhUBth7Fbih3UM0lnSGiAAvbhueMgWEieoXPe+N3VJUuBDx1mnaaZrTbF9gOg+kUP+bDqko7iuKtHJdZpCMbg6jyRVSXMSwnbsJOdiWfgNC0XR9EMYw8CWFVXwxdRSFIVAjwEAQrXIBgfHCHDog29RuQwIJh60Ufx4IOBE2TGBPA9KBnWJCBFXMapFBUbgm+0RVD6Gk-NG0PQDCMfeNOv5ROnQPgyWaMofAAdhua2-mdmWaRMgAR4JOJQEQCK9FmLgP4gRSBGDKPwHQw00CoGlH8b+PRSpGDyFAZQnAeDsWgOSOgShP5fyyCeUhDA36TTgQgzI-BOgEBXsINI35C4r1QiUdBu11BnmfFoHWmQuhQPYhhdiABiUYZ4ji+goDNaEzQkT7lQPuDEBAlDGzABIgq38ABChtIjcAABITB0HkE+lpF42n4AASXYXECI1hUCIBSkSHU5AlIqP7uo-g2EGCdFiGQOUWgpAKSkrMGSMDQzvl0cMYQVIXqS38DLNcaizKuAIRkhWIx-6qP3BKAJQSFHwiSAJKkExFI8C0BkiUHDJArzsWhepTiXF0T+NI4JVJbg6ygK4TRDBpwkHEMNEo1JvzCGcc7fJvjSASkGdODk5TvwMByHY7gCdlQ1XSYUhpTSWmTOmagB638KZDNocOfgExNBpHWK4fpv0YCoAQYsnq08GriFkbrapMTJp0H3AMrRaRNFHGcMIUovpvl3DgJIakCNXDqDgMjKkfzhwlDaqi04jh5QtGoEUTmsQEgMW3sNNqSLqSx1dAosasoCpWXfKSEwYBvhvCAA", #nolint
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
    "NobwRAdghgtgpmAXGKAHVA6ASmANGAYwHsIAXOMpMAdzgCMAnRRAVwhiLdIAoAdMAPQsAzgwEAbAJZ0BWCdIZQGATwHCAFpIjKAskTqTxcfgEpeEAiNJEYAfS3DSUceIAEAHgC0rgGZsCpJIkrtyoUAQA1lAA5nDCuK4McKhEwq4AvK4AcgCqADJ5CVo+RBnZ+YWuUnRluQUJAI4sknCkZQBiAIJ5AMoAognmrsOuHFxlACpYOX0mruYgQyOSPiGSwhgQLC7c1SZzixAjx1XSHt4Y1QAKUKTqwtwmwMAAjAC6b0vDAL5fritrDZbHZJFLCfauQ4nEag1LnVyxUgAeVQgRIfBo9AYtlQEWitlhwlMf1+RxGADc4Ax4fwACwYekABn4f0p1K8COELDoGN4fN4GGAAD0MG8ANQAEn4gzA0tcbLMZOGhPh0S5PP4AileHmsp1hMVx2IZAYZw5wlQprIPgxAFJhAIDBABHAYMICKbURQBMbSKaZPa5YTBkqTgq-r7-ar1RjYRgGJ5qFBhDAMEQGNFHVoXW6PZIvc7I9IBPSAMxyv7HfhxhNJlNpjNZ52u92e8iFkh+4tljDlnVFugh6HDHySAAecAAJpNprM-gDuOtNttxIuICUIVDh8VShyWIFxMJmFByVBDFA6EYMGFIjE4twBywGG5MgPDSNScdJ8k0nuIFJHG4awiEPZgbyiWJbG-VAKG-CwWgecC73if51yIEwh2HEQ4E2WA4g6bp+nfYZoN-bw2EkJo4G4UjiN8dMQmg1DXFoyFK2WVZdgoaI7m4UcIEna9wgg6joMaZpWhnGZ9gOdjoQgOAx1IOTXE-bcIEcZxVzExJklSIo0ISapxJaUgEjGMg6LUkcGNCPFmKQ2JwTY0NjgXIwIB49Q+K0QTHOo3FohMyTMimaTNxU44FKUlTrJOBcAEJAtcW0tFtRIiGoaB4AeHcItc4ckwYCAtGiUJk3IDEsDgKjHCnVx-LlQKZQgIg2hKNhpy0VxaDoLBXCdJRlF0lIMFMOjh1caLlIKn4VNheEd2AZrdWqsFJGsFR+E+WaRt3bwY34UcjEQCs9QSWEElHCdp1C2cJpGQLbDZRa0OWvEZQANSpYQgggbaVMSppTLmSKRhy4Q73KuqMQAEUy-8iCgSdSp6+h+v806dUC-ZAc4izSFk3bjj9ZQAGFbgIbyt0m6FeqYZgHCcFxnp8YR7BgKHLtOQcGo+vn8XDYmPwSKkGAYzI-AsNEIAfASidp7dOIS6JQVXfgcmgS84FcawWIR8QkcnOVjRRmWdDiSHYjlycZJcxXJscIhUBth7Fbih3UM0lnSGiAAvbhueMgWEieoXPe+N3VJUuBDx1mnaaZrTbF9gOg+kUP+bDqko7iuKtHJdZpCMbg6jyRVSXMSwnbsJOdiWfgNC0XR9EMYw8CWFVXwxdRSFIVAjwEAQrXIBgfHCHDog29RuQwIJh60Ufx4IOBE2TGBPA9KBnWJCBFXMapFBUbgm+0RVD6Gk-NG0PQDCMfeNOv5ROnQPgyWaMofAAdhua2-mdmWaRMgAR4JOJQEQCK9FmLgP4gRSBGDKPwHQw00CoGlH8b+PRSpGDyFAZQnAeDsWgOSOgShP5fyyCeUhDA36TTgQgzI-AACSEBUD7lcPuQwRIO67XUGeZ8WgdaZC6FA9iGF2LAXENQ8hEwiAgWobQ4c60ZaILAHQNq1gYDoN2t-PIWgIi7AvLHVReiIAQJeHKdQSRViMLAL3fug8BDUGcRgaIcjohXmIFosA4idFf1MQY8QRiXy6gCa4AATJY6xqj7ED0QEPZx1BXHuM8TYXe0JfHQgAMSjDPEcX0FAZrQm-hTBgk5FHQnoUI3UWg2GkAlKfZQLCSjaMmmyUhgQYATEUsifcdSMQ7m4fsGBBVdHrEIX47pSk1x1KYbdXU5AYo6iCXQYxtipnKR8SMyamCpDfhobU-cczVGKE8nACxyzgmqKwNvWIcoYDdUyIycyUAxxlHCQkU84gWDVJeAkOqqAyiMgwC8TJw5MHkHQFSGZRz5mN0hTBBgFyjJXNsT0BFVJ7mPNcM83JbzMgvFxV8n5ZQACsD0wXHBKUocpKkqmqMOfUoJjgWF1LJnws5xseFtKpB0yQXSelIj6fuDEzLSDstuVOdJJw6LvjBcIKkL1Jb+BljCsyrgCF1IViMTV+4JSDPhEkASVIrgjzVQ0p+zT0L-2FUyiqErOWGtgias1jKJRitZfuB1sRbZLFJCYMA3w3hAA", #nolint
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

