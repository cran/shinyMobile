## ----setup, echo=FALSE, message=FALSE-----------------------------------------
library(bslib)

## ----eval=TRUE, echo=FALSE----------------------------------------------------
card(
  shinyMobile:::create_app_link(
    "NobwRAdghgtgpmAXGKAHVA6ASmANGAYwHsIAXOMpMAdzgCMAnRRAVwhiLdIAoAdMAPQsAzgwEAbAJZ0BWCdIZQGATwHCAFpIjKAskTqTxcfgEpeEAiNJEYAfS3DSUceIAEAHgC0rgGZsCpJIkrtyoUAQA1lAA5nDCuK4McKhEwq4AvK4AcgCqADJ5CVo+RBnZ+YWuUnRluQUJAI4sknCkZQBiAIJ5AMoAognmrsOuHFxlACpYOX0mruYgQyOSPiGSwhgQLC7c1SZzixAjx1XSHt4Y1QAKUKTqwtwmwMAAjAC6b0vDAL5fritrDZbHZJFLCfauQ4nEag1LnVyxUgAeVQgRIfBo9AYtlQEWitlhwlMf1+RxGADc4Ax4fwACwYekABn4f0p1K8COELDoGN4fN4GGAAD0MG8ANQAEn4gzA0tcbLMZOGhPh0S5PP4AileHmsp1hMVx2IZAYZw5wlQprIPgxAFJhAIDBABHAYMICKbURQBMbSKaZPa5YTBkqTgq-r7-ar1RjYRgGJ5qFBhDAMEQGNFHVoXW6PZIvc7I9IBPSAMxyv7HfhxhNJlNpjNZ52u92e8iFkh+4tljDlnVFugh6HDHySAAecAAJpNprM-gDuOtNttxIuICUIVDh8VShyWIFxMJmFByVBDFA6EYMGFIjE4twBywGG5MgPDSNScdJ8k0nuIFJHG4awiEPZgbyiWJbG-VAKG-CwWgecC73if51yIEwh2HEQ4E2WA4g6bp+nfYZoN-bw2EkJo4G4UjiN8dMQmg1DXFoyFK2WVZdgoaI7m4UcIEna9wgg6joMaZpWhnGZ9gOdjoQgOAx1IOTXE-bcIEcZxVzExJklSIo0ISapxJaUgEjGMg6LUkcGNCPFmKQ2JwTY0NjgXIwIB49Q+K0QTHOo3FohMyTMimaTNxU44FKUlTrJOBcAEJAtcW0tFtRIiGoaB4AeHcItc4ckwYCAtGiUJk3IDEsDgKjHCnVx-LlQKZQgIg2hKNhpy0VxaDoLBXCdJRlF0lIMFMOjh1caLlIKn4VNheEd2AZrdWqsFJGsFR+E+WaRt3bwY34UcjEQCs9QSWEElHCdp1C2cJpGQLbDZRa0OWvEZQANSpYQgggbaVMSppTLmSKRhy4Q73KuqMQAEUy-8iCgSdSp6+h+v806dUC-ZAc4izSFk3bjj9ZQAGFbgIbyt0m6FeqYZgHCcFxnp8YR7BgKHLtOQcGo+vn8XDYmPwSKkGAYzI-AsNEIAfASidp7dOIS6JQVXfgcmgS84FcawWIR8QkcnOVjRRmWdDiSHYjlycZJcxXJscIhUBth7Fbih3UM0lnSGiAAvbhueMgWEieoXPe+N3VJUuBDx1mnaaZrTbF9gOg+kUP+bDqko7iuKtHJdZpCMbg6jyRVSXMSwnbsJOdiWfgNC0XR9EMYw8CWFVXwxdRSFIVAjwEAQrXIBgfHCHDog29RuQwIJh60Ufx4IOBE2TGBPA9KBnWJCBFXMapFBUbgm+0RVD6Gk-NG0PQDCMfeLBA9MyNcAg+DJKRol7y8WB1zJ+AAMQAFZwgAA5x7SiWKgLQEQyiAJ8D4AATJOIBQDIFknIM4OBYAAGMkZAATgAGygNAeg4YyhY6G2oNggBCCCAEDwSyPe5hzCn2UJ0dA79hjNDKD4AA7Dca2fxAikCMNgnIqBJy3B1hw1AZCRjOxlmkTIXCTgAR4CpYghtqT-xwSAgg4CoBMOhHRDCfx+E9FKkYPIUBlCcA0QVaA5I6BKF4XwrIJ4XEMCAhtMRuiJFSPIK4WRphcDsX4QAIUNpECYvjqIa0kdI3W6hXTtzMQVCxcBojwDIKo6EkT9zWFlmDLQqB9wAElbq6juKk+wqR5GTX4JIJEPRkmpOMcOdJk0Cl93RCUiAZTSCVOwTU+AtgYDGw7sLfgOhYZtPgB0kx7EuknEidEiIsTRHxLAD0SSUiGCwI4N+UJ4S+G7OyRQBx3S+ERMKX04WpSKlVP4BQC8RgoJKAiEc9uYTplgD6FrMR+yvlEGObKXaKz8k3LucUh5AynnYJRpDbWHyDnfIacOfgsN1hvJ1sC9F4LJoPUhSMNZRAYlxIxGTdQ29YivyftSUZaTflQvOTkq5w4nDRDyOsDlk1xBoFQOIZQ3Bsr3i0c-ElntfD+Blg+BlCtpWrOhb02FSr1KDOGZkMIdVGQYgldiE2CqWXqrUReWOZQDUmtNSMA1lqGXWtNVHWmHsThR2JX8d8KzhBUhepLWVf01yDISPY4NrgfXCF+iQImfx9A+oYJSPolJcmPNIBKJldSUIJ24Yk8g7Q+GyLyScRRf1lGnEAmDJl2CghEkJZ05ZJIH7HDjb6uASbLlBv3OmlJYyJkJGza4Fgua4D5sLSpEtJAy3qKLdCKtuiJmLLdQ20MkcWGhhbQmttyaeCpolK8lF+LQVwH7exIdgSR0Fs4eO1EpayjTrBsCqSfQVIepXU2hRdB42Ju3Z2tNSLcWopBd+E9BUz3SNHVe3aE6NJ3t5TOk4j7MhdF6M+iFy7jirv+qGAV6BhWirwg8A14IroBvRAaxVzbP2tvbSm+FpBng6vIHq-gBrbBGu0SYD4IHJpgbzZel2YNoNTrg2DYYdrXwMuEMAA1O1FbuvYphjD77SQmDAN8N4QA", # nolint
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
    "NobwRAdghgtgpmAXGKAHVA6ASmANGAYwHsIAXOMpMAdzgCMAnRRAVwhiLdIAoAdMAPQsAzgwEAbAJZ0BWCdIZQGATwHCAFpIjKAskTqTxcfgEpeEAiNJEYAfS3DSUceIAEAHgC0rgGZsCpJIkrtyoUAQA1lAA5nDCuK4McKhEwq4AvK4AcgCqADJ5CVo+RBnZ+YWuUnRluQUJAI4sknCkZQBiAIJ5AMoAognmrsOuHFxlACpYOX0mruYgQyOSPiGSwhgQLC7c1SZzixAjx1XSHt4Y1QAKUKTqwtwmwMAAjAC6b0vDAL5fritrDZbHZJFLCfauQ4nEag1LnVyxUgAeVQgRIfBo9AYtlQEWitlhwlMf1+RxGADc4Ax4fwACwYekABn4f0p1K8COELDoGN4fN4GGAAD0MG8ANQAEn4gzA0tcbLMZOGhPh0S5PP4AileHmsp1hMVx2IZAYZw5wlQprIPgxAFJhAIDBABHAYMICKbURQBMbSKaZPa5YTBkqTgq-r7-ar1RjYRgGJ5qFBhDAMEQGNFHVoXW6PZIvc7I9IBPSAMxyv7HfhxhNJlNpjNZ52u92e8iFkh+4tljDlnVFugh6HDHySAAecAAJpNprM-gDuOtNttxIuICUIVDh8VShyWIFxMJmFByVBDFA6EYMGFIjE4twBywGG5MgPDSNScdJ8k0nuIFJHG4awiEPZgbyiWJbG-VAKG-CwWgecC73if51yIEwh2HEQ4E2WA4g6bp+nfYZoN-bw2EkJo4G4UjiN8dMQmg1DXFoyFK2WVZdgoaI7m4UcIEna9wgg6joMaZpWhnGZ9gOdjoQgOAx1IOTXE-bcIEcZxVzExJklSIo0ISapxJaUgEjGMg6LUkcGNCPFmKQ2JwTY0NjgXIwIB49Q+K0QTHOo3FohMyTMimaTNxU44FKUlTrJOBcAEJAtcW0tFtRIiGoaB4AeHcItc4ckwYCAtGiUJk3IDEsDgKjHCnVx-LlQKZQgIg2hKNhpy0VxaDoLBXCdJRlF0lIMFMOjh1caLlIKn4VNheEd2AZrdWqsFJGsFR+E+WaRt3bwY34UcjEQCs9QSWEElHCdp1C2cJpGQLbDZRa0OWvEZQANSpYQgggbaVMSppTLmSKRhy4Q73KuqMQAEUy-8iCgSdSp6+h+v806dUC-ZAc4izSFk3bjj9ZQAGFbgIbyt0m6FeqYZgHCcFxnp8YR7BgKHLtOQcGo+vn8XDYmPwSKkGAYzI-AsNEIAfASidp7dOIS6JQVXfgcmgS84FcawWIR8QkcnOVjRRmWdDiSHYjlycZJcxXJscIhUBth7Fbih3UM0lnSGiAAvbhueMgWEieoXPe+N3VJUuBDx1mnaaZrTbF9gOg+kUP+bDqko7iuKtHJdZpCMbg6jyRVSXMSwnbsJOdiWfgNC0XR9EMYw8CWFVXwxdRSFIVAjwEAQrXIBgfHCHDog29RuQwIJh60Ufx4IOBE2TGBPA9KBnWJCBFXMapFBUbgm+0RVD6Gk-NG0PQDCMfeNOv5ROnQPgyWaMofAAdhua2-kCUgRgyga1QJOW4OsX6oGlH8b+PRSpGDyFAZQnAeDsWgOSOgShP5fyyCeTBDAgIbSAZkEBYDyCuEgaYXA7Fv4ACFDaRAmEQ6ipDwG+C-rDSQzgiDRFcMaUc0Qny3D+lQmhX8ehwGiPAMgb9Jp0P3NYWWYMtCoH3AASVurqaIRBaEKJINA4W-AejqEyuwzh3DeEvBZLtDCKl5F93RMoiAqjSAaOAWAbRuiHEQAAEwGMVkYkx1AzFcMNrwvxsobHUN2vYxRsjE7OPUZo-gLBQHgP8bTVh5D+GSGiNYyaD1bGhnfEU4YwgqQvUlv4GWa4XEJBQXU1w5ThC-RIArEY+hykMEpH0SkMiVH7glJ4vREAEgJxHBw0JPD4nQkkMksAKMLFWI7rtABxDdTmLCbrZhGToTkCUu4iYmg0jrFcFAPhJBRwMBgCxKZeSVmTVIMoGC7icnXPyScKydE-idIqXAXpFAeADNIEMnRIyfFjLEZs6ZKk1k6xIWATorU7hUluRY7ZgD27RMeYpNoCKjmnNOdvM5RgGDKUidCL55gfl0C6T0vpQLEkgtSWQuAkKCosvAe0L+kCZknGdjLNImQAKoOFosrZwr1iis9nQEZSIIjuIAJpwCgKqqA6gEq7NprK7xFMLCx3cUiFgxqB6aopbTKOhT2JQruXyty8zxU8Iidi4ccL3EAHUlAlU8lqkmzz4W6jeTAX1Ix9l4t1HkIgRAFW3FGGy1wajXDqBPDrc5Clgk6sUcIM17Eo5VlDJHP4SxSQmDAN8N4QA", # nolint
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
    "NobwRAdghgtgpmAXGKAHVA6ASmANGAYwHsIAXOMpMAdzgCMAnRRAVwhiLdIAoAdMAPQsAzgwEAbAJZ0BWCdIZQGATwHCAFpIjKAskTqTxcfgEpeEAiNJEYAfS3DSUceIAEAHgC0rgGZsCpJIkrtyoUAQA1lAA5nDCuK4McKhEwq4AvK4AcgCqADJ5CVo+RBnZ+YWuUnRluQUJAI4sknCkZQBiAIJ5AMoAognmrsOuHFxlACpYOX0mruYgQyOSPiGSwhgQLC7c1SZzixAjx1XSHt4Y1QAKUKTqwtwmwMAAjAC6b0vDAL5fritrDZbHZJFLCfauQ4nEag1LnVyxUgAeVQgRIfBo9AYtlQEWitlhwlMf1+RxGADc4Ax4fwACwYekABn4f0p1K8COELDoGN4fN4GGAAD0MG8ANQAEn4gzA0tcbLMZOGhPh0S5PP4AileHmsp1hMVx2IZAYZw5wlQprIPgxAFJhAIDBABHAYMICKbURQBMbSKaZPa5YTBkqTgq-r7-ar1RjYRgGJ5qFBhDAMEQGNFHVoXW6PZIvc7I9IBPSAMxyv7HfhxhNJlNpjNZ52u92e8iFkh+4tljDlnVFugh6HDHySAAecAAJpNprM-gDuOtNttxIuICUIVDh8VShyWIFxMJmFByVBDFA6EYMGFIjE4twBywGG5MgPDSNScdJ8k0nuIFJHG4awiEPZgbyiWJbG-VAKG-CwWgecC73if51yIEwh2HEQ4E2WA4g6bp+nfYZoN-bw2EkJo4G4UjiN8dMQmg1DXFoyFK2WVZdgoaI7m4UcIEna9wgg6joMaZpWhnGZ9gOdjoQgOAx1IOTXE-bcIEcZxVzExJklSIo0ISapxJaUgEjGMg6LUkcGNCPFmKQ2JwTY0NjgXIwIB49Q+K0QTHOo3FohMyTMimaTNxU44FKUlTrJOBcAEJAtcW0tFtRIiGoaB4AeHcItc4ckwYCAtGiUJk3IDEsDgKjHCnVx-LlQKZQgIg2hKNhpy0VxaDoLBXCdJRlF0lIMFMOjh1caLlIKn4VNheEd2AZrdWqsFJGsFR+E+WaRt3bwY34UcjEQCs9QSWEElHCdp1C2cJpGQLbDZRa0OWvEZQANSpYQgggbaVMSppTLmSKRhy4Q73KuqMQAEUy-8iCgSdSp6+h+v806dUC-ZAc4izSFk3bjj9ZQAGFbgIbyt0m6FeqYZgHCcFxnp8YR7BgKHLtOQcGo+vn8XDYmPwSKkGAYzI-AsNEIAfASidp7dOIS6JQVXfgcmgS84FcawWIR8QkcnOVjRRmWdDiSHYjlycZJcxXJscIhUBth7Fbih3UM0lnSGiAAvbhueMgWEieoXPe+N3VJUuBDx1mnaaZrTbF9gOg+kUP+bDqko7iuKtHJdZpCMbg6jyRVSXMSwnbsJOdiWfgNC0XR9EMYw8CWFVXwxdRSFIVAjwEAQrXIBgfHCHDog29RuQwIJh60Ufx4IOBE2TGBPA9KBnWJCBFXMapFBUbgm+0RVD6Gk-NG0PQDCMfeNOv5ROnQPgyWaMofAAdhua2-kCUgRgyga1QJOW4Os+hkA2soaUfxv49FKkYPIUBlCcB4OxaA5I6BKE-l-LIJ5sEMCAhtIBmQQFgPIK4cIMtXAaDgJJJOFh24YXYvAuA0R4BkDfpNb+AAhfc1hZZgy0KgfcABJW6upohEH4X3EgsDhbiAvLHYBYAADiRAEosl2iw3afCBHomERAURpAJGqJYKA8BCjFZKLoCoshYAciWMocaUc0RtGTV0Twr+sjBHcMTsY8RkjqxxFaNY2mtj7GrVCcpWUOj2J0XfF42hVIXqS38DLNcJiEhoOySk4Qv0SAKxGPoYQqS4B9EpFwkR+4JTSN8SQBICcRxf06AEP6PR1D0PQbtVWkhJFhQGIDYJKB2kkBeOE6EdADEaTKABHpNj1gLIduQJSqishtRWJIAgtw-qTMTsaXBYjjQYh3KYXAYNhjEENtSTIZcwbJMmvM-xitVltAcbDSQzgiDuI7sLYY2zgiSy-scwxYApDRF7tM8QdBbDHXEOcy5rhrkS3KAUB5KkHpWQfscUp5TKkUB4DU0gEoLEULgE09iZLwHtC-pAgBygXnxRGdQv6Ey-mTWdjLNImRnlg2mXI2ZvKllMqeSKpFww3nrM2aOHZMt9mK0BUcYFoKhFgDOWAR5DsUW3LRXkJFUdhhRyxSSHFJS6BlIYJSAl1TAkkqSGUsy9sTjUvILS+l0DRXLBZWMiA7KLm7S5X9HlpxAL8pmSGvl-zQ3LM9lKhxGzAiyt2fIjlnt-iHJVSc-gGqtWKx1bUCoBqA2eyjem3Wil3m6k+d835Jb01KqOdm8FkhIWkGhbC+FiLo1XJAqi+50bDWuGNQk01SxSQmDAN8N4QA", # nolint
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
    "NobwRAdghgtgpmAXGKAHVA6ASmANGAYwHsIAXOMpMAdzgCMAnRRAVwhiLdIAoAdMAPQsAzgwEAbAJZ0BWCdIZQGATwHCAFpIjKAskTqTxcfgEpeEAiNJEYAfS3DSUceIAEAHgC0rgGZsCpJIkrtyoUAQA1lAA5nDCuK4McKhEwq4AvK4AcgCqADJ5CVo+RBnZ+YWuUnRluQUJAI4sknCkZQBiAIJ5AMoAognmrsOuHFxlACpYOX0mruYgQyOSPiGSwhgQLC7c1SZzixAjx1XSHt4Y1QAKUKTqwtwmwMAAjAC6b0vDAL5fritrDZbHZJFLCfauQ4nEag1LnVyxUgAeVQgRIfBo9AYtlQEWitlhwlMf1+RxGADc4Ax4fwACwYekABn4f0p1K8COELDoGN4fN4GGAAD0MG8ANQAEn4gzA0tcbLMZOGhPh0S5PP4AileHmsp1hMVx2IZAYZw5wlQprIPgxAFJhAIDBABHAYMICKbURQBMbSKaZPa5YTBkqTgq-r7-ar1RjYRgGJ5qFBhDAMEQGNFHVoXW6PZIvc7I9IBPSAMxyv7HfhxhNJlNpjNZ52u92e8iFkh+4tljDlnVFugh6HDHySAAecAAJpNprM-gDuOtNttxIuICUIVDh8VShyWIFxMJmFByVBDFA6EYMGFIjE4twBywGG5MgPDSNScdJ8k0nuIFJHG4awiEPZgbyiWJbG-VAKG-CwWgecC73if51yIEwh2HEQ4E2WA4g6bp+nfYZoN-bw2EkJo4G4UjiN8dMQmg1DXFoyFK2WVZdgoaI7m4UcIEna9wgg6joMaZpWhnGZ9gOdjoQgOAx1IOTXE-bcIEcZxVzExJklSIo0ISapxJaUgEjGMg6LUkcGNCPFmKQ2JwTY0NjgXIwIB49Q+K0QTHOo3FohMyTMimaTNxU44FKUlTrJOBcAEJAtcW0tFtRIiGoaB4AeHcItc4ckwYCAtGiUJk3IDEsDgKjHCnVx-LlQKZQgIg2hKNhpy0VxaDoLBXCdJRlF0lIMFMOjh1caLlIKn4VNheEd2AZrdWqsFJGsFR+E+WaRt3bwY34UcjEQCs9QSWEElHCdp1C2cJpGQLbDZRa0OWvEZQANSpYQgggbaVMSppTLmSKRhy4Q73KuqMQAEUy-8iCgSdSp6+h+v806dUC-ZAc4izSFk3bjj9ZQAGFbgIbyt0m6FeqYZgHCcFxnp8YR7BgKHLtOQcGo+vn8XDYmPwSKkGAYzI-AsNEIAfASidp7dOIS6JQVXfgcmgS84FcawWIR8QkcnOVjRRmWdDiSHYjlycZJcxXJscIhUBth7Fbih3UM0lnSGiAAvbhueMgWEieoXPe+N3VJUuBDx1mnaaZrTbF9gOg+kUP+bDqko7iuKtHJdZpCMbg6jyRVSXMSwnbsJOdiWfgNC0XR9EMYw8CWFVXwxdRSFIVAjwEAQrXIBgfHCHDog29RuQwIJh60Ufx4IOBE2TGBPA9KBnWJCBFXMapFBUbgm+0RVD6Gk-NG0PQDCMfeNOv5ROnQPgyWaMofAAdhua2-kCUgRgyj8AAOJQBYE5aUfxv49FKkYPIUBlCcB4OxaA5I6BKE-l-LIJ4MEMCAhtIBmQjpfzARA9uGF2IwLgNEeAZA36TW-gAIX3NYWWYMtCoH3AASVurqFgqBJy3HbrgMG4gLyx2AWAHIgjhGuDIbEFkwtKG7WYaw9EHCIBcNILwqRSRhCtCgcLcRdBJHELANVAxylZTKPYio6EzDDaRAYcOb+CjqIcL4fwGAyhojgMUR3YWpBlAwSkQYmAkgCCSAYAQIwRjFannECwHWmQACsjJRHCzoOmb8DAyYgQlrqAAxAAJheAATgAGw+D7JkxW2SGC5IAOqSEnHcMoLwMlg0Sck9onZYF+xSa4WkLw6m0x6XACYilSD5MNtScxpSKnVNqWIiR4gplKSkbATgZBXBEFWMIGwrRr7RCUZNB6dF3z2NcAYhgL1Jb+BlmubRCRkEvJuZbP6CsRj6FuZSPolJ6GcP3BKARQjyAJATsMBS1BnrOHhF-VJ7EwXCPaF-PoZANrKBcdCVpUifF+PIfE4czsZZpEyABFBwsimuB0FYAaOtTGkFoBQVwjJXDb2nC8bpzhkllBhXCtwAhXCdIyfMYWEyNltEyGEOqjJuACsSTKW0pgxmTRMbHKVUishwGoFUNZCUznDguSSOifxflUn+YCngwLSASn0a0SFyLZHkDRRigB2LAZeLAAS-xIiVKkr+uS04gEeVJKGek1wwrRVquHJK6ZUj0kqsCYrDV6yE3mO2eMfZNyjl3FKka6EJrQyRyWKSEwYBvhvCAA", # nolint
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
    "NobwRAdghgtgpmAXGKAHVA6ASmANGAYwHsIAXOMpMAdzgCMAnRRAVwhiLdIAoAdMAPQsAzgwEAbAJZ0BWCdIZQGATwHCAFpIjKAskTqTxcfgEpeEAiNJEYAfS3DSUceIAEAHgC0rgGZsCpJIkrtyoUAQA1lAA5nDCuK4McKhEwq4AvK4AcgCqADJ5CVo+RBnZ+YWuUnRluQUJAI4sknCkZQBiAIJ5AMoAognmrsOuHFxlACpYOX0mruYgQyOSPiGSwhgQLC7c1SZzixAjx1XSHt4Y1QAKUKTqwtwmwMAAjAC6b0vDAL5fritrDZbHZJFLCfauQ4nEag1LnVyxUgAeVQgRIfBo9AYtlQEWitlhwlMf1+RxGADc4Ax4fwACwYekABn4f0p1K8COELDoGN4fN4GGAAD0MG8ANQAEn4gzA0tcbLMZOGhPh0S5PP4AileHmsp1hMVx2IZAYZw5wlQprIPgxAFJhAIDBABHAYMICKbURQBMbSKaZPa5YTBkqTgq-r7-ar1RjYRgGJ5qFBhDAMEQGNFHVoXW6PZIvc7I9IBPSAMxyv7HfhxhNJlNpjNZ52u92e8iFkh+4tljDlnVFugh6HDHySAAecAAJpNprM-gDuOtNttxIuICUIVDh8VShyWIFxMJmFByVBDFA6EYMGFIjE4twBywGG5MgPDSNScdJ8k0nuIFJHG4awiEPZgbyiWJbG-VAKG-CwWgecC73if51yIEwh2HEQ4E2WA4g6bp+nfYZoN-bw2EkJo4G4UjiN8dMQmg1DXFoyFK2WVZdgoaI7m4UcIEna9wgg6joMaZpWhnGZ9gOdjoQgOAx1IOTXE-bcIEcZxVzExJklSIo0ISapxJaUgEjGMg6LUkcGNCPFmKQ2JwTY0NjgXIwIB49Q+K0QTHOo3FohMyTMimaTNxU44FKUlTrJOBcAEJAtcW0tFtRIiGoaB4AeHcItc4ckwYCAtGiUJk3IDEsDgKjHCnVx-LlQKZQgIg2hKNhpy0VxaDoLBXCdJRlF0lIMFMOjh1caLlIKn4VNheEd2AZrdWqsFJGsFR+E+WaRt3bwY34UcjEQCs9QSWEElHCdp1C2cJpGQLbDZRa0OWvEZQANSpYQgggbaVMSppTLmSKRhy4Q73KuqMQAEUy-8iCgSdSp6+h+v806dUC-ZAc4izSFk3bjj9ZQAGFbgIbyt0m6FeqYZgHCcFxnp8YR7BgKHLtOQcGo+vn8XDYmPwSKkGAYzI-AsNEIAfASidp7dOIS6JQVXfgcmgS84FcawWIR8QkcnOVjRRmWdDiSHYjlycZJcxXJscIhUBth7Fbih3UM0lnSGiAAvbhueMgWEieoXPe+N3VJUuBDx1mnaaZrTbF9gOg+kUP+bDqko7iuKtHJdZpCMbg6jyRVSXMSwnbsJOdiWfgNC0XR9EMYw8CWFVXwxdRSFIVAjwEAQrXIBgfHCHDog29RuQwIJh60Ufx4IOBE2TGBPA9KBnWJCBFXMapFBUbgm+0RVD6Gk-NG0PQDCMfeNOv5ROnQPgyWaMofAAdhua2-kCUgRgyj8B0MNNAqBpR-G-j0UqRg8hQGUJwHg7FoDkjoEoT+X8sgnnQQwICG0gGZCOl-PI6xlJgAwuxaBcBojwDIG-Sa38ABC+5rCyzBloVA+4ACSt1dQsFQJOW47dcBg3EBeWOwCwA5EEcIlku1KG7WYaw9EHCIBcNILwqRSRhCtEgcLcRdBJFELANVXR5CVIPUUdCb+pDAJg2GJIPh-AYDKF9OEUgRIO7C2GBwb8Uj3EBC8aInxVRwHiGUNwF4iBSxXX8DLRcCtPa+BIWQgA4uLARDDknDAAYQ1weQ+gTAmH0LAPRgCSDeCEnJwxxHoAiVExALxGRxOln9bgAArOYtiyHcPIDALifcfrAA6W8XGoThhR2OJHMGdF3zWNcLohgL1JbxPaZw-cCQkEaISLo4Qv0SBJJHKkxw3CBKKUXM4wgnYPHBPmBMkYTgMwhV1AAYlcYEzxFYHm1IkS+VwYU5yhj+PoJZlI+iUnoRs0gEoBFCPIAkBOww4XCPaF-PoZANqRJUvwT5wSVLOxlmkTIAFkEGL+QRXofRLHsSsnREFdAwVwAhRQHg0KJQ6NaIi9iKLyBooxQA7Fu1cU3KCfoyahK-rEtOPY8lRj-mAppQVOlfwlikhMGAb4bwgA", # nolint
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
    "NobwRAdghgtgpmAXGKAHVA6ASmANGAYwHsIAXOMpMAdzgCMAnRRAVwhiLdIAoAdMAPQsAzgwEAbAJZ0BWCdIZQGATwHCAFpIjKAskTqTxcfgEpeEAiNJEYAfS3DSUceIAEAHgC0rgGZsCpJIkrtyoUAQA1lAA5nDCuK4McKhEwq4AvK4AcgCqADJ5CVo+RBnZ+YWuUnRluQUJAI4sknCkZQBiAIJ5AMoAognmrsOuHFxlACpYOX0mruYgQyOSPiGSwhgQLC7c1SZzixAjx1XSHt4Y1QAKUKTqwtwmwMAAjAC6b0vDAL5fritrDZbHZJFLCfauQ4nEag1LnVyxUgAeVQgRIfBo9AYtlQEWitlhwlMf1+RxGADc4Ax4fwACwYekABn4f0p1K8COELDoGN4fN4GGAAD0MG8ANQAEn4gzA0tcbLMZOGhPh0S5PP4AileHmsp1hMVx2IZAYZw5wlQprIPgxAFJhAIDBABHAYMICKbURQBMbSKaZPa5YTBkqTgq-r7-ar1RjYRgGJ5qFBhDAMEQGNFHVoXW6PZIvc7I9IBPSAMxyv7HfhxhNJlNpjNZ52u92e8iFkh+4tljDlnVFugh6HDHySAAecAAJpNprM-gDuOtNttxIuICUIVDh8VShyWIFxMJmFByVBDFA6EYMGFIjE4twBywGG5MgPDSNScdJ8k0nuIFJHG4awiEPZgbyiWJbG-VAKG-CwWgecC73if51yIEwh2HEQ4E2WA4g6bp+nfYZoN-bw2EkJo4G4UjiN8dMQmg1DXFoyFK2WVZdgoaI7m4UcIEna9wgg6joMaZpWhnGZ9gOdjoQgOAx1IOTXE-bcIEcZxVzExJklSIo0ISapxJaUgEjGMg6LUkcGNCPFmKQ2JwTY0NjgXIwIB49Q+K0QTHOo3FohMyTMimaTNxU44FKUlTrJOBcAEJAtcW0tFtRIiGoaB4AeHcItc4ckwYCAtGiUJk3IDEsDgKjHCnVx-LlQKZQgIg2hKNhpy0VxaDoLBXCdJRlF0lIMFMOjh1caLlIKn4VNheEd2AZrdWqsFJGsFR+E+WaRt3bwY34UcjEQCs9QSWEElHCdp1C2cJpGQLbDZRa0OWvEZQANSpYQgggbaVMSppTLmSKRhy4Q73KuqMQAEUy-8iCgSdSp6+h+v806dUC-ZAc4izSFk3bjj9ZQAGFbgIbyt0m6FeqYZgHCcFxnp8YR7BgKHLtOQcGo+vn8XDYmPwSKkGAYzI-AsNEIAfASidp7dOIS6JQVXfgcmgS84FcawWIR8QkcnOVjRRmWdDiSHYjlycZJcxXJscIhUBth7Fbih3UM0lnSGiAAvbhueMgWEieoXPe+N3VJUuBDx1mnaaZrTbF9gOg+kUP+bDqko7iuKtHJdZpCMbg6jyRVSXMSwnbsJOdiWfgNC0XR9EMYw8CWFVXwxdRSFIVAjwEAQrXIBgfHCHDog29RuQwIJh60Ufx4IOBE2TGBPA9KBnWJCBFXMapFBUbgm+0RVD6Gk-NG0PQDCMfeNOv5ROnQPgyWaMofAAdhua2-kCUgRgyhHR-uoNqRAABC4tqDCCpNKP438eilSMHkKAyhOA8HYtAckdAlCfy-lkE8uCGBAQ2kAzIICrhgOsFAzKsCGCmFwOxRBcBojwDIG-Sa38IH7msLLMGWhUD7gAJK3V1NYaI0QjBUPAfA4W4gLyx2AWAFEFAGrUKICyXaGEVLcN4eiAREAhGkFEcolgqBJy3Hbkw+RiiXy6hyBYqxWjJoPTou+HRZJ6EvUlv4GWa5jEJAwYE1wsDhC-RIArEY+hvFwD6JSDhgj9wSgkVIuAMjrAJATiOUB4DaEwKpJw7cYj+CoA0YwOhVIXhyMmncV0OsKFgEsQwCINThykGUDBZRYRYhtOhGU8BaRMgAUwfI9YPAnz2P4L3fug8fSTggBgHwih4DUHTBEL+c8iACFQAoleYDxDfjEBadMpBhCeBeIyAATLSMclybkXIwAAK1QNERhYMRncEmcomZA9EBDwIAspZKy4BrJaZs+euyJ4HKOWoFIDAzkXOubc+5tJPBXOea895YzALfMab8uZgLFnLLwmCjZWydl7LgDCqkcLTnnNRXc5FnhSyYreR3YWJwCBoBlsoi2rgCDKAIFITyu9XE2NqTPGAdAhkCqKZNaZfc-kAqBSS1Z6yIXbKhfskCsKTkIoZciplDyXhsr6cORVsz-nzOJSCslmrKXQt1bS-ViLGWovRWajlitLXKptcC0lGqKXaupc6458K3VGo9ayl57KVJuJJA-Y4MSqSUniRQHgSTSASnMZY8gWT2K5qse0L+fQyAbWUPKk4pTynQPodU71w5nYy1lZ8sGHSumNJSEI1A5r+nO3MVcEQ6gpIDHbUQECxCCK9DHcLAZ1hW3jKrdCT5eLdQEutUSgN6rwXBqpTS8N9KkU3ONWi01saxW008YrO4LBpWLsAr6wlqq7VBshfusNdKDXHpRcy89WKwBRwTaGSOSxSQmDAN8N4QA", # nolint
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
    "NobwRAdghgtgpmAXGKAHVA6ASmANGAYwHsIAXOMpMAdzgCMAnRRAVwhiLdIAoAdMAPQsAzgwEAbAJZ0BWCdIZQGATwHCAFpIjKAskTqTxcfgEpeEAiNJEYAfS3DSUceIAEAHgC0rgGZsCpJIkrtyoUAQA1lAA5nDCuK4McKhEwq4AvK4AcgCqADJ5CVo+RBnZ+YWuUnRluQUJAI4sknCkZQBiAIJ5AMoAognmrsOuHFxlACpYOX0mruYgQyOSPiGSwhgQLC7c1SZzixAjx1XSHt4Y1QAKUKTqwtwmwMAAjAC6b0vDAL5fritrDZbHZJFLCfauQ4nEag1LnVyxUgAeVQgRIfBo9AYtlQEWitlhwlMf1+RxGADc4Ax4fwACwYekABn4f0p1K8COELDoGN4fN4GGAAD0MG8ANQAEn4gzA0tcbLMZOGhPh0S5PP4AileHmsp1hMVx2IZAYZw5wlQprIPgxAFJhAIDBABHAYMICKbURQBMbSKaZPa5YTBkqTgq-r7-ar1RjYRgGJ5qFBhDAMEQGNFHVoXW6PZIvc7I9IBPSAMxyv7HfhxhNJlNpjNZ52u92e8iFkh+4tljDlnVFugh6HDHySAAecAAJpNprM-gDuOtNttxIuICUIVDh8VShyWIFxMJmFByVBDFA6EYMGFIjE4twBywGG5MgPDSNScdJ8k0nuIFJHG4awiEPZgbyiWJbG-VAKG-CwWgecC73if51yIEwh2HEQ4E2WA4g6bp+nfYZoN-bw2EkJo4G4UjiN8dMQmg1DXFoyFK2WVZdgoaI7m4UcIEna9wgg6joMaZpWhnGZ9gOdjoQgOAx1IOTXE-bcIEcZxVzExJklSIo0ISapxJaUgEjGMg6LUkcGNCPFmKQ2JwTY0NjgXIwIB49Q+K0QTHOo3FohMyTMimaTNxU44FKUlTrJOBcAEJAtcW0tFtRIiGoaB4AeHcItc4ckwYCAtGiUJk3IDEsDgKjHCnVx-LlQKZQgIg2hKNhpy0VxaDoLBXCdJRlF0lIMFMOjh1caLlIKn4VNheEd2AZrdWqsFJGsFR+E+WaRt3bwY34UcjEQCs9QSWEElHCdp1C2cJpGQLbDZRa0OWvEZQANSpYQgggbaVMSppTLmSKRhy4Q73KuqMQAEUy-8iCgSdSp6+h+v806dUC-ZAc4izSFk3bjj9ZQAGFbgIbyt0m6FeqYZgHCcFxnp8YR7BgKHLtOQcGo+vn8XDYmPwSKkGAYzI-AsNEIAfASidp7dOIS6JQVXfgcmgS84FcawWIR8QkcnOVjRRmWdDiSHYjlycZJcxXJscIhUBth7Fbih3UM0lnSGiAAvbhueMgWEieoXPe+N3VJUuBDx1mnaaZrTbF9gOg+kUP+bDqko7iuKtHJdZpCMbg6jyRVSXMSwnbsJOdiWfgNC0XR9EMYw8CWFVXwxdRSFIVAjwEAQrXIBgfHCHDog29RuQwIJh60Ufx4IOBE2TGBPA9KBnWJCBFXMapFBUbgm+0RVD6Gk-NG0PQDCMfeNOv5ROnQPgyWaMofAAdhua2-kCUgRgyj8CuM7FgqBpR-G-j0UqRg8hQGUJwHg7FoDkjoEoT+X8sgnnQQwN+k0AFAMyEdH+YCIGygKhhdi0C4DRHgGQfBw5v4ACF9zWFlmDLQqB9wAElbq6msNEaIRgKzC3EBeWOwCwATCIEIoBoDuHkJUlQ3aLC2Hok4RAbhpA+FSPAZOW47dMKTXEXQSRxCwA5FQAY8grgFHgN3tCOi74VHDGEFSF6kt-AyzXNohISC-GuHccIX6JAFYjACfuCUSQyK6QElSK4I9fFRPIEpOifx9DuIYJSPolIGFcJSbI4RcAEgJxHKQxRjDoSSH4fwFIijIG7UITrCxOhhqjgYI4BqZDGmTW-hMRSyDhb8FScpHUICyGuF9BQMZuAwb8AmJoNI6xRjtMkJ0to9TwGuDgGyBIPCgm0CUAlFku1XHDjZOgwIMABlKSRPubRsY4iOJOFZdJoZMkeLgLkmZyTSASn0YY0p7FAXkHaF-PoZANrKCqfFWpYAtnkLmbtZ2Ms0iZAAkMxWwhqD5jgDIsmht3FSQGGDbekhOa2MyF0XopLhYECJXAJEEA+jujQC01wYU6WKwAMSuDJp2GZowrBTM7GeI4dwdaIrBny8RiD9wJUVWDaZZAygAHJ3Ao3JFM8RIT0h1J6WAAAfGDYYmrJDaoZcmYQ+qwCFzgNQfgJrhbHHNZa3VNq6l3idaak4bqdXWttag3BPqXXDn9VavV-Bg1KE8HQaITr3ACC1c6z20II0eqDTg2NWgFIMFDWm8NWqA1RrAM0p19jUBJpTb6yaGbA3VkkNEXuBbC3hoSp4bweQtARF1qUBlqQpWTM7amtt6aoAls9WAKQEBe2Is3oyp1hLB1JqgKOsdZrk0WvXW26t27a0jD3eSHdnt62lrCLETegqyCtrHWeqdl4iCRCdVkB1oqyBCowF+o9J6HY-oPf+sNgHFY-rVco9ibylikhMGAb4bwgA", # nolint
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
    "NobwRAdghgtgpmAXGKAHVA6ASmANGAYwHsIAXOMpMAdzgCMAnRRAVwhiLdIAoAdMAPQsAzgwEAbAJZ0BWCdIZQGATwHCAFpIjKAskTqTxcfgEpeEAiNJEYAfS3DSUceIAEAHgC0rgGZsCpJIkrtyoUAQA1lAA5nDCuK4McKhEwq4AvK4AcgCqADJ5CVo+RBnZ+YWuUnRluQUJAI4sknCkZQBiAIJ5AMoAognmrsOuHFxlACpYOX0mruYgQyOSPiGSwhgQLC7c1SZzixAjx1XSHt4Y1QAKUKTqwtwmwMAAjAC6b0vDAL5fritrDZbHZJFLCfauQ4nEag1LnVyxUgAeVQgRIfBo9AYtlQEWitlhwlMf1+RxGADc4Ax4fwACwYekABn4f0p1K8COELDoGN4fN4GGAAD0MG8ANQAEn4gzA0tcbLMZOGhPh0S5PP4AileHmsp1hMVx2IZAYZw5wlQprIPgxAFJhAIDBABHAYMICKbURQBMbSKaZPa5YTBkqTgq-r7-ar1RjYRgGJ5qFBhDAMEQGNFHVoXW6PZIvc7I9IBPSAMxyv7HfhxhNJlNpjNZ52u92e8iFkh+4tljDlnVFugh6HDHySAAecAAJpNprM-gDuOtNttxIuICUIVDh8VShyWIFxMJmFByVBDFA6EYMGFIjE4twBywGG5MgPDSNScdJ8k0nuIFJHG4awiEPZgbyiWJbG-VAKG-CwWgecC73if51yIEwh2HEQ4E2WA4g6bp+nfYZoN-bw2EkJo4G4UjiN8dMQmg1DXFoyFK2WVZdgoaI7m4UcIEna9wgg6joMaZpWhnGZ9gOdjoQgOAx1IOTXE-bcIEcZxVzExJklSIo0ISapxJaUgEjGMg6LUkcGNCPFmKQ2JwTY0NjgXIwIB49Q+K0QTHOo3FohMyTMimaTNxU44FKUlTrJOBcAEJAtcW0tFtRIiGoaB4AeHcItc4ckwYCAtGiUJk3IDEsDgKjHCnVx-LlQKZQgIg2hKNhpy0VxaDoLBXCdJRlF0lIMFMOjh1caLlIKn4VNheEd2AZrdWqsFJGsFR+E+WaRt3bwY34UcjEQCs9QSWEElHCdp1C2cJpGQLbDZRa0OWvEZQANSpYQgggbaVMSppTLmSKRhy4Q73KuqMQAEUy-8iCgSdSp6+h+v806dUC-ZAc4izSFk3bjj9ZQAGFbgIbyt0m6FeqYZgHCcFxnp8YR7BgKHLtOQcGo+vn8XDYmPwSKkGAYzI-AsNEIAfASidp7dOIS6JQVXfgcmgS84FcawWIR8QkcnOVjRRmWdDiSHYjlycZJcxXJscIhUBth7Fbih3UM0lnSGiAAvbhueMgWEieoXPe+N3VJUuBDx1mnaaZrTbF9gOg+kUP+bDqko7iuKtHJdZpCMbg6jyRVSXMSwnbsJOdiWfgNC0XR9EMYw8CWFVXwxdRSFIVAjwEAQrXIBgfHCHDog29RuQwIJh60Ufx4IOBE2TGBPA9KBnWJCBFXMapFBUbgm+0RVD6Gk-NG0PQDCMff4MCfCOWy+9LTgAh8wf0-lE6dA+DJM0MoPgADsNxrZ-ECKQIwZR+B9DHGEASF4YHCDgEoKmdAlDSj+KAnopUjB5CgMoTgPB2LQHJJg6kksQFZBPJQgBk0oEwMyEdEBPQ0EMAwUoHq09dammiLEBg2DdrqloRQ7h1CejcjEfQsGuCOFcIYAwh2khbq6lQeg9QLwKzC2GIpRBk5kE6zujMMGUcHoYXYvI6I8AyDKOhKAgAQvuawsswZaFQPuAAkmo-gLBUCGPIMIxW4gLyx1gWAHIATbjtxUpY3aTiXHoncRATxpAfERKSKg5SHdhahLoOElhYBqrZJZLtCxuArEgMcYbSI9iTjyM0ZQiY-DBFASUIiDJRSNGcK0bvaEcxbQAD50qgIABKqLgEiCA7DNGPEqQVUBeR1ikN2qE9A4hlAnxqrYZwJAyqfyfuCK6-gZaLgVrTJZKyvHkBgA+DaCFgCSDeLnCxKURm+BAe0TgAl5lVJqUQOpKkXb8CyG1a+0R6KdX6ScQZHzQFgtIN8zqjw-jvnicMVBDAXqS1OX9NcaSEgkLSRc4Y+gsWUj6JSOxHj9wSn8YEuACQE7DAZTE9oIC+hkA2lswGviwA9Kpto3Jk1nYyzSJkACqzFYo0htrZxfdgiZC6L0PocT2JWTon8clVJKXUp4LS0gEosmtGZexNl5AOVcqgby3aqiImCr6SK4cYq-oStOIBMGsqjEKtcVJNV5SNUknfKSEwYBvhvCAA", # nolint
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
    "NobwRAdghgtgpmAXGKAHVA6ASmANGAYwHsIAXOMpMAdzgCMAnRRAVwhiLdIAoAdMAPQsAzgwEAbAJZ0BWCdIZQGATwHCAFpIjKAskTqTxcfgEpeEAiNJEYAfS3DSUceIAEAHgC0rgGZsCpJIkrtyoUAQA1lAA5nDCuK4McKhEwq4AvK4AcgCqADJ5CVo+RBnZ+YWuUnRluQUJAI4sknCkZQBiAIJ5AMoAognmrsOuHFxlACpYOX0mruYgQyOSPiGSwhgQLC7c1SZzixAjx1XSHt4Y1QAKUKTqwtwmwMAAjAC6b0vDAL5fritrDZbHZJFLCfauQ4nEag1LnVyxUgAeVQgRIfBo9AYtlQEWitlhwlMf1+RxGADc4Ax4fwACwYekABn4f0p1K8COELDoGN4fN4GGAAD0MG8ANQAEn4gzA0tcbLMZOGhPh0S5PP4AileHmsp1hMVx2IZAYZw5wlQprIPgxAFJhAIDBABHAYMICKbURQBMbSKaZPa5YTBkqTgq-r7-ar1RjYRgGJ5qFBhDAMEQGNFHVoXW6PZIvc7I9IBPSAMxyv7HfhxhNJlNpjNZ52u92e8iFkh+4tljDlnVFugh6HDHySAAecAAJpNprM-gDuOtNttxIuICUIVDh8VShyWIFxMJmFByVBDFA6EYMGFIjE4twBywGG5MgPDSNScdJ8k0nuIFJHG4awiEPZgbyiWJbG-VAKG-CwWgecC73if51yIEwh2HEQ4E2WA4g6bp+nfYZoN-bw2EkJo4G4UjiN8dMQmg1DXFoyFK2WVZdgoaI7m4UcIEna9wgg6joMaZpWhnGZ9gOdjoQgOAx1IOTXE-bcIEcZxVzExJklSIo0ISapxJaUgEjGMg6LUkcGNCPFmKQ2JwTY0NjgXIwIB49Q+K0QTHOo3FohMyTMimaTNxU44FKUlTrJOBcAEJAtcW0tFtRIiGoaB4AeHcItc4ckwYCAtGiUJk3IDEsDgKjHCnVx-LlQKZQgIg2hKNhpy0VxaDoLBXCdJRlF0lIMFMOjh1caLlIKn4VNheEd2AZrdWqsFJGsFR+E+WaRt3bwY34UcjEQCs9QSWEElHCdp1C2cJpGQLbDZRa0OWvEZQANSpYQgggbaVMSppTLmSKRhy4Q73KuqMQAEUy-8iCgSdSp6+h+v806dUC-ZAc4izSFk3bjj9ZQAGFbgIbyt0m6FeqYZgHCcFxnp8YR7BgKHLtOQcGo+vn8XDYmPwSKkGAYzI-AsNEIAfASidp7dOIS6JQVXfgcmgS84FcawWIR8QkcnOVjRRmWdDiSHYjlycZJcxXJscIhUBth7Fbih3UM0lnSGiAAvbhueMgWEieoXPe+N3VJUuBDx1mnaaZrTbF9gOg+kUP+bDqko7iuKtHJdZpCMbg6jyRVSXMSwnbsJOdiWfgNC0XR9EMYw8CWFVXwxdRSFIVAjwEAQrXIBgfHCHDog29RuQwIJh60Ufx4IOBE2TGBPA9KBnWJCBFXMapFBUbgm+0RVD6Gk-NG0PQDCMfeNOv5ROnQPgyWaMofAAdhua2-kCUgRgyj8B6NQfMVJpR-G-j0UqRg8hQGUJwHg7FoDkjoEoT+X8sgnnQQwICG0gGZCOl-UB4CGCmFwOxaBcBojwDIG-Sa38ABC+5rCyzBloVA+4ACSt1dQsFQJOW47dKHC3EBeWOwCwA5EEcIlku0MIqWYaw9EHCIBcNILwqRSRhCtEgWIiRL5VpxD0bKBR7FFEFWgWAmCeDAZ8MbjYiBHddrOxlmkTIAFkHC1QZIaItw-plC8Qwh2FALxGD4V0XofQwaWMVmEKe0AZZBPWN4z2YTtZ8LCgMMGwxJFELABgYQTiEwJK0AEkgFZhbDAIFIW82spIxOFlHOJw5xHoHEMobgLxEAACZGSDF4A+BWtNoFSG-CExW38KYMEnJMh2ADCGuAtCPG0IDxk60DP2KOxwdmuFzg9Oi75Wm6IYC9SW-gZZrg0QkJBGiRnDH0KcykfRKT0M4fuCUAihHkASAnYY3zhHtC-n0MgG0ukqUcWQ-Rk03F-Q8acQCYMLRwHqpkF4jIBnIo2cIK4VJPotGoGUXpojFYWgnkw1otAKBlAxaS2mUB9zO3EcNO6Mx6WOw9CBcQuCUlIuqa4DJESCLRNiRy4cZSkmBM8ak+Zk1SDKBglIy0RBVaW1wTC0JWthVsqaYrVpk1VaSD4cE3JvhDBGP4MQcQLAYAaU1YrcW1AEW0liSpQ5JI6J-CeVSF5byeAfNIBKHRrQ-nsUBeQYFoKAEQt2lC2xDqThwpIAi01wsUVotcLSTF4roTCBxXihgBK4BEoKYy6wia803jgJS0g1KjiZAAKxYuFuW5lCCRX9FzScVs3LeUyv5ek7VmbslirBpKipDbEVpIWYqnWBS6ArlaESFxQ7wkjtnGO4WRqTWyrNcdS1hAQK2v+quh2TqEUvDdeYgqVl3ykhMGAb4bwgA", # nolint
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
#          lapply(1:20, \(c) {
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

