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
    "NobwRAdghgtgpmAXGKAHVA6ASmANGAYwHsIAXOMpMAdzgCMAnRRAVwhiLdIAoAdMAPQsAzgwEAbAJZ0BWCdIZQGATwHCAFpIjKAskTqTxcfgEpeEAiNJEYAfS3DSUceIAEAHgC0rgGZsCpJIkrtyoUAQA1lAA5nDCuK4McKhEwq4AvK4AcgCqADJ5CVo+RBnZ+YWuUnRluQUJAI4sknCkZQBiAIJ5AMoAognmrsOuHFxlACpYOX0mruYgQyOSPiGSwhgQLC7c1SZzixAjx1XSHt4Y1QAKUKTqwtwmwMAAjAC6b0vDAL5fritrDZbHZJFLCfauQ4nEag1LnVyxUgAeVQgRIfBo9AYtlQEWitlhwlMf1+RxGADc4Ax4fwACwYekABn4f0p1K8COELDoGN4fN4GGAAD0MG8ANQAEn4gzA0tcbLMZOGhPh0S5PP4AileHmsp1hMVx2IZAYZw5wlQprIPgxAFJhAIDBABHAYMICKbURQBMbSKaZPa5YTBkqTgq-r7-ar1RjYRgGJ5qFBhDAMEQGNFHVoXW6PZIvc7I9IBPSAMxyv7HfhxhNJlNpjNZ52u92e8iFkh+4tljDlnVFugh6HDHySAAecAAJpNprM-gDuOtNttxIuICUIVDh8VShyWIFxMJmFByVBDFA6EYMGFIjE4twBywGG5MgPDSNScdJ8k0nuIFJHG4awiEPZgbyiWJbG-VAKG-CwWgecC73if51yIEwh2HEQ4E2WA4g6bp+nfYZoN-bw2EkJo4G4UjiN8dMQmg1DXFoyFK2WVZdgoaI7m4UcIEna9wgg6joMaZpWhnGZ9gOdjoQgOAx1IOTXE-bcIEcZxVzExJklSIo0ISapxJaUgEjGMg6LUkcGNCPFmKQ2JwTY0NjgXIwIB49Q+K0QTHOo3FohMyTMimaTNxU44FKUlTrJOBcAEJAtcW0tFtRIiGoaB4AeHcItc4ckwYCAtGiUJk3IDEsDgKjHCnVx-LlQKZQgIg2hKNhpy0VxaDoLBXCdJRlF0lIMFMOjh1caLlIKn4VNheEd2AZrdWqsFJGsFR+E+WaRt3bwY34UcjEQCs9QSWEElHCdp1C2cJpGQLbDZRa0OWvEZQANSpYQgggbaVMSppTLmSKRhy4Q73KuqMQAEUy-8iCgSdSp6+h+v806dUC-ZAc4izSFk3bjj9ZQAGFbgIbyt0m6FeqYZgHCcFxnp8YR7BgKHLtOQcGo+vn8XDYmPwSKkGAYzI-AsNEIAfASidp7dOIS6JQVXfgcmgS84FcawWIR8QkcnOVjRRmWdDiSHYjlycZJcxXJscIhUBth7Fbih3UM0lnSGiAAvbhueMgWEieoXPe+N3VJUuBDx1mnaaZrTbF9gOg+kUP+bDqko7iuKtHJdZpCMbg6jyRVSXMSwnbsJOdiWfgNC0XR9EMYw8CWFVXwxdRSFIVAjwEAQrXIBgfHCHDog29RuQwIJh60Ufx4IOBE2TGBPA9KBnTO3v+8H4e9PjNf63TaJiQgRVzGqRQVG4JvtEVG+hvvzRtD0AwjCvjS3+UTp0D4GSZoZQfAAHYbjWz+IEUgRgyj8B0MNNAqBpR-GdjLNImQAI8EnEoCIBFegDF1uoV0OtMj8CCESMAGE-hgJ6KVIweQoDKE4Dwdi0ByR0CUCA0BWQTycIYEBDasCyFgDAXkdYykqG4HYmIiRgDJocG-HAsAv0YCoCMCg3a4gkHiGUNwF4iAACsV1-Ay24AAKwVrTWRjgACS5AYDyIdtA4RDUKrUX4PY10cpLFg1zg9Oi75qFkmEFSF6ktTF-TXKgfcCQWExMJvbaOl8wDfDeEAA", # nolint
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
    "NobwRAdghgtgpmAXGKAHVA6ASmANGAYwHsIAXOMpMAdzgCMAnRRAVwhiLdIAoAdMAPQsAzgwEAbAJZ0BWCdIZQGATwHCAFpIjKAskTqTxcfgEpeEAiNJEYAfS3DSUceIAEAHgC0rgGZsCpJIkrtyoUAQA1lAA5nDCuK4McKhEwq4AvK4AcgCqADJ5CVo+RBnZ+YWuUnRluQUJAI4sknCkZQBiAIJ5AMoAognmrsOuHFxlACpYOX0mruYgQyOSPiGSwhgQLC7c1SZzixAjx1XSHt4Y1QAKUKTqwtwmwMAAjAC6b0vDAL5fritrDZbHZJFLCfauQ4nEag1LnVyxUgAeVQgRIfBo9AYtlQEWitlhwlMf1+RxGADc4Ax4fwACwYekABn4f0p1K8COELDoGN4fN4GGAAD0MG8ANQAEn4gzA0tcbLMZOGhPh0S5PP4AileHmsp1hMVx2IZAYZw5wlQprIPgxAFJhAIDBABHAYMICKbURQBMbSKaZPa5YTBkqTgq-r7-ar1RjYRgGJ5qFBhDAMEQGNFHVoXW6PZIvc7I9IBPSAMxyv7HfhxhNJlNpjNZ52u92e8iFkh+4tljDlnVFugh6HDHySAAecAAJpNprM-gDuOtNttxIuICUIVDh8VShyWIFxMJmFByVBDFA6EYMGFIjE4twBywGG5MgPDSNScdJ8k0nuIFJHG4awiEPZgbyiWJbG-VAKG-CwWgecC73if51yIEwh2HEQ4E2WA4g6bp+nfYZoN-bw2EkJo4G4UjiN8dMQmg1DXFoyFK2WVZdgoaI7m4UcIEna9wgg6joMaZpWhnGZ9gOdjoQgOAx1IOTXE-bcIEcZxVzExJklSIo0ISapxJaUgEjGMg6LUkcGNCPFmKQ2JwTY0NjgXIwIB49Q+K0QTHOo3FohMyTMimaTNxU44FKUlTrJOBcAEJAtcW0tFtRIiGoaB4AeHcItc4ckwYCAtGiUJk3IDEsDgKjHCnVx-LlQKZQgIg2hKNhpy0VxaDoLBXCdJRlF0lIMFMOjh1caLlIKn4VNheEd2AZrdWqsFJGsFR+E+WaRt3bwY34UcjEQCs9QSWEElHCdp1C2cJpGQLbDZRa0OWvEZQANSpYQgggbaVMSppTLmSKRhy4Q73KuqMQAEUy-8iCgSdSp6+h+v806dUC-ZAc4izSFk3bjj9ZQAGFbgIbyt0m6FeqYZgHCcFxnp8YR7BgKHLtOQcGo+vn8XDYmPwSKkGAYzI-AsNEIAfASidp7dOIS6JQVXfgcmgS84FcawWIR8QkcnOVjRRmWdDiSHYjlycZJcxXJscIhUBth7Fbih3UM0lnSGiAAvbhueMgWEieoXPe+N3VJUuBDx1mnaaZrTbF9gOg+kUP+bDqko7iuKtHJdZpCMbg6jyRVSXMSwnbsJOdiWfgNC0XR9EMYw8CWFVXwxdRSFIVAjwEAQrXIBgfHCHDog29RuQwIJh60Ufx4IOBE2TGBPA9KBnWJCBFXMapFBUbgm+0RVD6Gk-NG0PQDCMfeNOv5ROnQPgyWaMofAAdhua2-kCUgRgyj8B0MNNAqBpR-GdjLNImQAI8EnEoCIBFegDF1uoV0OtMj8CCESMAGE-jfx6KVIweQoDKE4Dwdi0ByR0CUJ-L+WQTx0IYEBDaQDsFgG-nkdYyl8G4HYtw3hb9JocG-MAsAv0YCoCMJA3alCpAKSkgMFSKNC7fgYLA1wYUVG7UcOLTyyiBG7XEOA8QyhuAvEQAAViuv4GW3AABWCtaZCMcAASXIDAERDsAEcIahVai-BPGujlM4sGucHp0XfAQskwgqQvUlvYv6a5UD7gSJQtJhN7bRz3mAb4bwgA", # nolint
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
    "NobwRAdghgtgpmAXGKAHVA6ASmANGAYwHsIAXOMpMAdzgCMAnRRAVwhiLdIAoAdMAPQsAzgwEAbAJZ0BWCdIZQGATwHCAFpIjKAskTqTxcfgEpeEAiNJEYAfS3DSUceIAEAHgC0rgGZsCpJIkrtyoUAQA1lAA5nDCuK4McKhEwq4AvK4AcgCqADJ5CVo+RBnZ+YWuUnRluQUJAI4sknCkZQBiAIJ5AMoAognmrsOuHFxlACpYOX0mruYgQyOSPiGSwhgQLC7c1SZzixAjx1XSHt4Y1QAKUKTqwtwmwMAAjAC6b0vDAL5fritrDZbHZJFLCfauQ4nEag1LnVyxUgAeVQgRIfBo9AYtlQEWitlhwlMf1+RxGADc4Ax4fwACwYekABn4f0p1K8COELDoGN4fN4GGAAD0MG8ANQAEn4gzA0tcbLMZOGhPh0S5PP4AileHmsp1hMVx2IZAYZw5wlQprIPgxAFJhAIDBABHAYMICKbURQBMbSKaZPa5YTBkqTgq-r7-ar1RjYRgGJ5qFBhDAMEQGNFHVoXW6PZIvc7I9IBPSAMxyv7HfhxhNJlNpjNZ52u92e8iFkh+4tljDlnVFugh6HDHySAAecAAJpNprM-gDuOtNttxIuICUIVDh8VShyWIFxMJmFByVBDFA6EYMGFIjE4twBywGG5MgPDSNScdJ8k0nuIFJHG4awiEPZgbyiWJbG-VAKG-CwWgecC73if51yIEwh2HEQ4E2WA4g6bp+nfYZoN-bw2EkJo4G4UjiN8dMQmg1DXFoyFK2WVZdgoaI7m4UcIEna9wgg6joMaZpWhnGZ9gOdjoQgOAx1IOTXE-bcIEcZxVzExJklSIo0ISapxJaUgEjGMg6LUkcGNCPFmKQ2JwTY0NjgXIwIB49Q+K0QTHOo3FohMyTMimaTNxU44FKUlTrJOBcAEJAtcW0tFtRIiGoaB4AeHcItc4ckwYCAtGiUJk3IDEsDgKjHCnVx-LlQKZQgIg2hKNhpy0VxaDoLBXCdJRlF0lIMFMOjh1caLlIKn4VNheEd2AZrdWqsFJGsFR+E+WaRt3bwY34UcjEQCs9QSWEElHCdp1C2cJpGQLbDZRa0OWvEZQANSpYQgggbaVMSppTLmSKRhy4Q73KuqMQAEUy-8iCgSdSp6+h+v806dUC-ZAc4izSFk3bjj9ZQAGFbgIbyt0m6FeqYZgHCcFxnp8YR7BgKHLtOQcGo+vn8XDYmPwSKkGAYzI-AsNEIAfASidp7dOIS6JQVXfgcmgS84FcawWIR8QkcnOVjRRmWdDiSHYjlycZJcxXJscIhUBth7Fbih3UM0lnSGiAAvbhueMgWEieoXPe+N3VJUuBDx1mnaaZrTbF9gOg+kUP+bDqko7iuKtHJdZpCMbg6jyRVSXMSwnbsJOdiWfgNC0XR9EMYw8CWFVXwxdRSFIVAjwEAQrXIBgfHCHDog29RuQwIJh60Ufx4IOBE2TGBPA9KBnWJCBFXMapFBUbgm+0RVD6Gk-NG0PQDCMfeNOv5ROnQPgyWaMofAAdhua2-kCUgRgyj8B0MNNAqBpR-GdjLNImQAI8EnEoCIBFegDF1uoV0OtMj8CCESMAGE-jfx6KVIweQoDKE4Dwdi0ByR0CUJ-L+WQTx0IYEBDaQDsFgG-nkdYyl8G4HYtw3hb9JocG-MAsAUgIARDwQI3alCpFYNcGFAYKkUaF2-AwWByjZxyMdn6Eg0QpKqN2uIcB4hlDcBeIgAArFdfwMtuAACsFa0ycGqCUUgREOyEdI3YF5Y5lDCDDfgABJcgMA5QuISOoJIqxOG937oPAQ1BUkYGiEQIg0QrzEEifgsGucHp0XfAQskwgqQvUlg4v6a5UD7gSJQuphN7bRz3mAb4bwgA", # nolint
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
    "NobwRAdghgtgpmAXGKAHVA6ASmANGAYwHsIAXOMpMAdzgCMAnRRAVwhiLdIAoAdMAPQsAzgwEAbAJZ0BWCdIZQGATwHCAFpIjKAskTqTxcfgEpeEAiNJEYAfS3DSUceIAEAHgC0rgGZsCpJIkrtyoUAQA1lAA5nDCuK4McKhEwq4AvK4AcgCqADJ5CVo+RBnZ+YWuUnRluQUJAI4sknCkZQBiAIJ5AMoAognmrsOuHFxlACpYOX0mruYgQyOSPiGSwhgQLC7c1SZzixAjx1XSHt4Y1QAKUKTqwtwmwMAAjAC6b0vDAL5fritrDZbHZJFLCfauQ4nEag1LnVyxUgAeVQgRIfBo9AYtlQEWitlhwlMf1+RxGADc4Ax4fwACwYekABn4f0p1K8COELDoGN4fN4GGAAD0MG8ANQAEn4gzA0tcbLMZOGhPh0S5PP4AileHmsp1hMVx2IZAYZw5wlQprIPgxAFJhAIDBABHAYMICKbURQBMbSKaZPa5YTBkqTgq-r7-ar1RjYRgGJ5qFBhDAMEQGNFHVoXW6PZIvc7I9IBPSAMxyv7HfhxhNJlNpjNZ52u92e8iFkh+4tljDlnVFugh6HDHySAAecAAJpNprM-gDuOtNttxIuICUIVDh8VShyWIFxMJmFByVBDFA6EYMGFIjE4twBywGG5MgPDSNScdJ8k0nuIFJHG4awiEPZgbyiWJbG-VAKG-CwWgecC73if51yIEwh2HEQ4E2WA4g6bp+nfYZoN-bw2EkJo4G4UjiN8dMQmg1DXFoyFK2WVZdgoaI7m4UcIEna9wgg6joMaZpWhnGZ9gOdjoQgOAx1IOTXE-bcIEcZxVzExJklSIo0ISapxJaUgEjGMg6LUkcGNCPFmKQ2JwTY0NjgXIwIB49Q+K0QTHOo3FohMyTMimaTNxU44FKUlTrJOBcAEJAtcW0tFtRIiGoaB4AeHcItc4ckwYCAtGiUJk3IDEsDgKjHCnVx-LlQKZQgIg2hKNhpy0VxaDoLBXCdJRlF0lIMFMOjh1caLlIKn4VNheEd2AZrdWqsFJGsFR+E+WaRt3bwY34UcjEQCs9QSWEElHCdp1C2cJpGQLbDZRa0OWvEZQANSpYQgggbaVMSppTLmSKRhy4Q73KuqMQAEUy-8iCgSdSp6+h+v806dUC-ZAc4izSFk3bjj9ZQAGFbgIbyt0m6FeqYZgHCcFxnp8YR7BgKHLtOQcGo+vn8XDYmPwSKkGAYzI-AsNEIAfASidp7dOIS6JQVXfgcmgS84FcawWIR8QkcnOVjRRmWdDiSHYjlycZJcxXJscIhUBth7Fbih3UM0lnSGiAAvbhueMgWEieoXPe+N3VJUuBDx1mnaaZrTbF9gOg+kUP+bDqko7iuKtHJdZpCMbg6jyRVSXMSwnbsJOdiWfgNC0XR9EMYw8CWFVXwxdRSFIVAjwEAQrXIBgfHCHDog29RuQwIJh60Ufx4IOBE2TGBPA9KBnWJCBFXMapFBUbgm+0RVD6Gk-NG0PQDCMfeNOv5ROnQPgyWaMofAAdhua2-kCUgRgyj8B0MNNAqBpR-GdjLNImQAI8EnEoCIBFegDF1uoV0OtMj8CCESMAGE-jfx6KVIweQoDKE4Dwdi0ByR0CUJ-L+WQTx0IYEBDaQDsFgG-nkdYyl8G4HYtw3hb9JocG-LUCoAjdqUKkApKSAwVIo0Lt+BgsDXBhQUbtRw4tPLyKkZNcQ4DxDKG4C8RAABWK6-gZbcAAFYK1pkIxwABJcgMAREOwARwhqFVqL8Fca6OU9j9EOwwcjKkZQwgw34AACTgOEhgQSCHCxsm1CJmQomVX4O0IgaTEk6mCWDYY6gkirE4b3fug8BDUBqRgaIuTohXmIDAFkwtc4PTou+ZJwxhBUhepLaxf01yoH3AkShIzCb22jnvMA3w3hAA", # nolint
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
    "NobwRAdghgtgpmAXGKAHVA6ASmANGAYwHsIAXOMpMAdzgCMAnRRAVwhiLdIAoAdMAPQsAzgwEAbAJZ0BWCdIZQGATwHCAFpIjKAskTqTxcfgEpeEAiNJEYAfS3DSUceIAEAHgC0rgGZsCpJIkrtyoUAQA1lAA5nDCuK4McKhEwq4AvK4AcgCqADJ5CVo+RBnZ+YWuUnRluQUJAI4sknCkZQBiAIJ5AMoAognmrsOuHFxlACpYOX0mruYgQyOSPiGSwhgQLC7c1SZzixAjx1XSHt4Y1QAKUKTqwtwmwMAAjAC6b0vDAL5fritrDZbHZJFLCfauQ4nEag1LnVyxUgAeVQgRIfBo9AYtlQEWitlhwlMf1+RxGADc4Ax4fwACwYekABn4f0p1K8COELDoGN4fN4GGAAD0MG8ANQAEn4gzA0tcbLMZOGhPh0S5PP4AileHmsp1hMVx2IZAYZw5wlQprIPgxAFJhAIDBABHAYMICKbURQBMbSKaZPa5YTBkqTgq-r7-ar1RjYRgGJ5qFBhDAMEQGNFHVoXW6PZIvc7I9IBPSAMxyv7HfhxhNJlNpjNZ52u92e8iFkh+4tljDlnVFugh6HDHySAAecAAJpNprM-gDuOtNttxIuICUIVDh8VShyWIFxMJmFByVBDFA6EYMGFIjE4twBywGG5MgPDSNScdJ8k0nuIFJHG4awiEPZgbyiWJbG-VAKG-CwWgecC73if51yIEwh2HEQ4E2WA4g6bp+nfYZoN-bw2EkJo4G4UjiN8dMQmg1DXFoyFK2WVZdgoaI7m4UcIEna9wgg6joMaZpWhnGZ9gOdjoQgOAx1IOTXE-bcIEcZxVzExJklSIo0ISapxJaUgEjGMg6LUkcGNCPFmKQ2JwTY0NjgXIwIB49Q+K0QTHOo3FohMyTMimaTNxU44FKUlTrJOBcAEJAtcW0tFtRIiGoaB4AeHcItc4ckwYCAtGiUJk3IDEsDgKjHCnVx-LlQKZQgIg2hKNhpy0VxaDoLBXCdJRlF0lIMFMOjh1caLlIKn4VNheEd2AZrdWqsFJGsFR+E+WaRt3bwY34UcjEQCs9QSWEElHCdp1C2cJpGQLbDZRa0OWvEZQANSpYQgggbaVMSppTLmSKRhy4Q73KuqMQAEUy-8iCgSdSp6+h+v806dUC-ZAc4izSFk3bjj9ZQAGFbgIbyt0m6FeqYZgHCcFxnp8YR7BgKHLtOQcGo+vn8XDYmPwSKkGAYzI-AsNEIAfASidp7dOIS6JQVXfgcmgS84FcawWIR8QkcnOVjRRmWdDiSHYjlycZJcxXJscIhUBth7Fbih3UM0lnSGiAAvbhueMgWEieoXPe+N3VJUuBDx1mnaaZrTbF9gOg+kUP+bDqko7iuKtHJdZpCMbg6jyRVSXMSwnbsJOdiWfgNC0XR9EMYw8CWFVXwxdRSFIVAjwEAQrXIBgfHCHDog29RuQwIJh60Ufx4IOBE2TGBPA9KBnWJCBFXMapFBUbgm+0RVD6Gk-NG0PQDCMfeNOv5ROnQPgyWaMofAAdhua2-kCUgRgyj8B0MNNAqBpR-GdjLNImQAI8EnEoCIBFegDF1uoV0OtMj8CCESMAGE-jfx6KVIweQoDKE4Dwdi0ByR0CUJ-L+WQTx0IYEBDaQDsFgG-nkdYyl8G4HYtw3hb9JocG-MAwgnZwikDwQI3alCpAKSkgMFSKNC7fgYLA1wYUVG7UcOLTyyi5GTXEOA8QyhuC0kQAANiuv4GWi4Fa0yEY4AA4uLFgLswbDAARw1weQ+gTAmH0LAPRgCSDeMYh2pj0DmO4C8RALxGR2Oln9bgAArJxnsXGkAAJLkBgGwwBWCGoVWovwK4P0SBykyVEz2Dt4AoygGUJwaoJSSBgGVbx9TXCiAIGUMIdVGQ9z7gPRAQ8CCTggBgHwih4DUHTBEL+c8iACFQKYle6gQIaLWXAZ2RhPAvGsYyMcRzGSeBqTKDA6TUDRF3j0h2BDhYPIAMSuCwNvScNgGpbKUVsGAdAqSuGTLrRSM0HmK0GeQYZ-AxS0gAEyuGsbqBIkMYDrOokkxk2KcWIAAJwEsJQShILxcbPJ6VHY4kcwa5wenRd8TzhjCCpC9SW9i0laFQPuBIlCuWE3ttHPeYBvhvCAA", # nolint
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
    "NobwRAdghgtgpmAXGKAHVA6ASmANGAYwHsIAXOMpMAdzgCMAnRRAVwhiLdIAoAdMAPQsAzgwEAbAJZ0BWCdIZQGATwHCAFpIjKAskTqTxcfgEpeEAiNJEYAfS3DSUceIAEAHgC0rgGZsCpJIkrtyoUAQA1lAA5nDCuK4McKhEwq4AvK4AcgCqADJ5CVo+RBnZ+YWuUnRluQUJAI4sknCkZQBiAIJ5AMoAognmrsOuHFxlACpYOX0mruYgQyOSPiGSwhgQLC7c1SZzixAjx1XSHt4Y1QAKUKTqwtwmwMAAjAC6b0vDAL5fritrDZbHZJFLCfauQ4nEag1LnVyxUgAeVQgRIfBo9AYtlQEWitlhwlMf1+RxGADc4Ax4fwACwYekABn4f0p1K8COELDoGN4fN4GGAAD0MG8ANQAEn4gzA0tcbLMZOGhPh0S5PP4AileHmsp1hMVx2IZAYZw5wlQprIPgxAFJhAIDBABHAYMICKbURQBMbSKaZPa5YTBkqTgq-r7-ar1RjYRgGJ5qFBhDAMEQGNFHVoXW6PZIvc7I9IBPSAMxyv7HfhxhNJlNpjNZ52u92e8iFkh+4tljDlnVFugh6HDHySAAecAAJpNprM-gDuOtNttxIuICUIVDh8VShyWIFxMJmFByVBDFA6EYMGFIjE4twBywGG5MgPDSNScdJ8k0nuIFJHG4awiEPZgbyiWJbG-VAKG-CwWgecC73if51yIEwh2HEQ4E2WA4g6bp+nfYZoN-bw2EkJo4G4UjiN8dMQmg1DXFoyFK2WVZdgoaI7m4UcIEna9wgg6joMaZpWhnGZ9gOdjoQgOAx1IOTXE-bcIEcZxVzExJklSIo0ISapxJaUgEjGMg6LUkcGNCPFmKQ2JwTY0NjgXIwIB49Q+K0QTHOo3FohMyTMimaTNxU44FKUlTrJOBcAEJAtcW0tFtRIiGoaB4AeHcItc4ckwYCAtGiUJk3IDEsDgKjHCnVx-LlQKZQgIg2hKNhpy0VxaDoLBXCdJRlF0lIMFMOjh1caLlIKn4VNheEd2AZrdWqsFJGsFR+E+WaRt3bwY34UcjEQCs9QSWEElHCdp1C2cJpGQLbDZRa0OWvEZQANSpYQgggbaVMSppTLmSKRhy4Q73KuqMQAEUy-8iCgSdSp6+h+v806dUC-ZAc4izSFk3bjj9ZQAGFbgIbyt0m6FeqYZgHCcFxnp8YR7BgKHLtOQcGo+vn8XDYmPwSKkGAYzI-AsNEIAfASidp7dOIS6JQVXfgcmgS84FcawWIR8QkcnOVjRRmWdDiSHYjlycZJcxXJscIhUBth7Fbih3UM0lnSGiAAvbhueMgWEieoXPe+N3VJUuBDx1mnaaZrTbF9gOg+kUP+bDqko7iuKtHJdZpCMbg6jyRVSXMSwnbsJOdiWfgNC0XR9EMYw8CWFVXwxdRSFIVAjwEAQrXIBgfHCHDog29RuQwIJh60Ufx4IOBE2TGBPA9KBnWJCBFXMapFBUbgm+0RVD6Gk-NG0PQDCMfeNOv5ROnQPgyWaMofAAdhua2-kCUgRgyj8B0MNNAqBpR-GdjLNImQAI8EnEoCIBFegDF1uoV0OtMj8CCESMAGE-jfx6KVIweQoDKE4Dwdi0ByR0CUJ-L+WQTx0IYEBDaQDsFgG-nkdYyl8G4HYtw3hb9JocG-MAwgnZwikDwQI3alCpAKSkgMFSKNC7fgYLA1wYUVG7UcOLTyyi5GTXEOA8QyhuC0kQAANiuv4GWi4Fa0yEY4AA4uLFgLswbDAARw1weQ+gTAmH0LAPRgCSDeMYh2pj0DmO4C8RALxGR2Oln9bgAArJxnsXGkAAJLkBgGwwBWCGoVWovwK4P0SBykyVEz2Dt4AoygAw3JxoMQwU0SQWwx1xCmDqfU2mABiVwWBt6ThsA1dQJAdZbBgHQKkrhky60UjNAZDswh1UZBiMUpYXiuGsbqBIkMYCoBLkkxkFzLmIAAJy3LubchILxcbCzWVHY4kcwa5wenRd8BCyTCCpC9SW9i0laFQPuBIlDwWE3ttHPeYBvhvCAA", # nolint
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
    "NobwRAdghgtgpmAXGKAHVA6ASmANGAYwHsIAXOMpMAdzgCMAnRRAVwhiLdIAoAdMAPQsAzgwEAbAJZ0BWCdIZQGATwHCAFpIjKAskTqTxcfgEpeEAiNJEYAfS3DSUceIAEAHgC0rgGZsCpJIkrtyoUAQA1lAA5nDCuK4McKhEwq4AvK4AcgCqADJ5CVo+RBnZ+YWuUnRluQUJAI4sknCkZQBiAIJ5AMoAognmrsOuHFxlACpYOX0mruYgQyOSPiGSwhgQLC7c1SZzixAjx1XSHt4Y1QAKUKTqwtwmwMAAjAC6b0vDAL5fritrDZbHZJFLCfauQ4nEag1LnVyxUgAeVQgRIfBo9AYtlQEWitlhwlMf1+RxGADc4Ax4fwACwYekABn4f0p1K8COELDoGN4fN4GGAAD0MG8ANQAEn4gzA0tcbLMZOGhPh0S5PP4AileHmsp1hMVx2IZAYZw5wlQprIPgxAFJhAIDBABHAYMICKbURQBMbSKaZPa5YTBkqTgq-r7-ar1RjYRgGJ5qFBhDAMEQGNFHVoXW6PZIvc7I9IBPSAMxyv7HfhxhNJlNpjNZ52u92e8iFkh+4tljDlnVFugh6HDHySAAecAAJpNprM-gDuOtNttxIuICUIVDh8VShyWIFxMJmFByVBDFA6EYMGFIjE4twBywGG5MgPDSNScdJ8k0nuIFJHG4awiEPZgbyiWJbG-VAKG-CwWgecC73if51yIEwh2HEQ4E2WA4g6bp+nfYZoN-bw2EkJo4G4UjiN8dMQmg1DXFoyFK2WVZdgoaI7m4UcIEna9wgg6joMaZpWhnGZ9gOdjoQgOAx1IOTXE-bcIEcZxVzExJklSIo0ISapxJaUgEjGMg6LUkcGNCPFmKQ2JwTY0NjgXIwIB49Q+K0QTHOo3FohMyTMimaTNxU44FKUlTrJOBcAEJAtcW0tFtRIiGoaB4AeHcItc4ckwYCAtGiUJk3IDEsDgKjHCnVx-LlQKZQgIg2hKNhpy0VxaDoLBXCdJRlF0lIMFMOjh1caLlIKn4VNheEd2AZrdWqsFJGsFR+E+WaRt3bwY34UcjEQCs9QSWEElHCdp1C2cJpGQLbDZRa0OWvEZQANSpYQgggbaVMSppTLmSKRhy4Q73KuqMQAEUy-8iCgSdSp6+h+v806dUC-ZAc4izSFk3bjj9ZQAGFbgIbyt0m6FeqYZgHCcFxnp8YR7BgKHLtOQcGo+vn8XDYmPwSKkGAYzI-AsNEIAfASidp7dOIS6JQVXfgcmgS84FcawWIR8QkcnOVjRRmWdDiSHYjlycZJcxXJscIhUBth7Fbih3UM0lnSGiAAvbhueMgWEieoXPe+N3VJUuBDx1mnaaZrTbF9gOg+kUP+bDqko7iuKtHJdZpCMbg6jyRVSXMSwnbsJOdiWfgNC0XR9EMYw8CWFVXwxdRSFIVAjwEAQrXIBgfHCHDog29RuQwIJh60Ufx4IOBE2TGBPA9KBnWJCBFXMapFBUbgm+0RVD6Gk-NG0PQDCMfeNOv5ROnQPgyWaMofAAdhua2-kCUgRgyj8B0MNNAqBpR-GdjLNImQAI8EnEoCIBFegDF1uoV0OtMj8CCESMAGE-jfx6KVIweQoDKE4Dwdi0ByR0CUJ-L+WQTx0IYEBDaQDsFgG-nkdYyl8G4HYtw3hb9JocG-MAsA8AUZQEgbtShUgFJSQGCpFGhdvwMFga4MKyjdqOHFp5JRAjdriHAeIZQ3AXiIBeIyK6-gZaLgVrTIRjgACS5AYAiIdgAjhDUKrUX4BMdh7cigEOFsMdU3isG+JhvwHo3JIlykkKEz2UjJBQDKE4NUEpJAwDKmDY4jhlA+P4HQdM6jPCKBRiIRArgAAcqAxwAG5ZGe3CQwAgZQwh1UZD3PuA9EBDwIJOCAGAfCKHgNQdMEQv5zyIAIVAJiV7qBAuo+ZcBnZGE8C8AAbIyMcOzGSeESTKDAAArVA0RTBGNaT1SQk47gSK-syWUYTXDJIdqaaIvdOl+KqpIL5fCQnXIdl0yqsSbA60Np5KkutFJtAvJQ9B6xfEMECJYEx1INqunQbcVw6hkzoJ1pzKeBBnBTRYDAOgVJEnvMVuoJIqxOEAGIWTC1zg9Oi753nCCpC9SWdi-prlQPuBIlDhWE3ttHPeYBvhvCAA", # nolint
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

