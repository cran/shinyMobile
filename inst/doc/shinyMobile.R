## ----setup, echo=FALSE, message=FALSE-----------------------------------------
library(bslib)

## ----eval=FALSE---------------------------------------------------------------
#  f7Gallery()

## ----eval=FALSE---------------------------------------------------------------
#  f7Page(
#    ...,
#    options = list(...),
#    title = NULL,
#    allowPWA = FALSE
#  )

## ----eval=FALSE---------------------------------------------------------------
#  options <- list(
#    theme = c("auto", "ios", "md"),
#    dark = TRUE,
#    skeletonsOnLoad = FALSE,
#    preloader = FALSE,
#    filled = FALSE,
#    color = "#007aff",
#    touch = list(
#      touchClicksDistanceThreshold = 5,
#      tapHold = TRUE,
#      tapHoldDelay = 750,
#      tapHoldPreventClicks = TRUE,
#      iosTouchRipple = FALSE,
#      mdTouchRipple = TRUE
#    ),
#    iosTranslucentBars = FALSE,
#    navbar = list(
#      iosCenterTitle = TRUE,
#      hideOnPageScroll = TRUE
#    ),
#    toolbar = list(
#      hideOnPageScroll = FALSE
#    ),
#    pullToRefresh = FALSE
#  )

## ----eval=FALSE---------------------------------------------------------------
#  f7Navbar(
#    ...,
#    subNavbar = NULL,
#    title = NULL,
#    hairline = TRUE,
#    bigger = FALSE,
#    transparent = FALSE,
#    leftPanel = FALSE,
#    rightPanel = FALSE
#  )

## ----eval=FALSE---------------------------------------------------------------
#  f7Toolbar(
#    ...,
#    position = c("top", "bottom"),
#    icons = FALSE,
#    scrollable = FALSE
#  )

## ----eval=FALSE---------------------------------------------------------------
#  f7Panel(
#    ...,
#    id = NULL,
#    title = NULL,
#    side = c("left", "right"),
#    effect = c("reveal", "cover", "push", "floating"),
#    resizable = FALSE
#  )

## ----eval=FALSE---------------------------------------------------------------
#  f7SingleLayout(
#    ...,
#    navbar,
#    toolbar = NULL,
#    panels = NULL
#  )

## ----eval=FALSE---------------------------------------------------------------
#  f7Page(
#    options = list(
#      dark = FALSE,
#      filled = FALSE,
#      theme = "md"
#    ),
#    ...
#  )

## ----eval=TRUE, echo=FALSE----------------------------------------------------
card(
  shinyMobile:::create_app_link(
    "NobwRAdghgtgpmAXGKAHVA6ASmANGAYwHsIAXOMpMAdzgCMAnRRAVwhiLdIAoAdMAPQsAzgwEAbAJZ0BWCdIZQGATwHCAFpIjKAskTqTxcfgEpeEAiNJEYAfS3DSUceIAEAHgC0rgGZsCpJIkrtyoUAQA1lAA5nDCuK4McKhEwq4AvK4AcgCqADJ5CVo+RBnZ+YWuUnRluQUJAI4sknCkZQBiAIJ5AMoAognmrsOuHFxlACpYOX0mruYgQyOSPiGSwhgQLC7c1SZzixAjx1XSHt4Y1QAKUKTqwtwmwMAAjAC6b0vDAL5fritrDZbHZJFLCfauQ4nEag1LnVyxUgAeVQgRIfBo9AYtlQEWitlhwlMf1+RxGADc4Ax4fwACwYekABn4f0p1K8COELDoGN4fN4GGAAD0MG8ANQAEn4gzA0tcbLMZOGhPh0S5PP4AileHmsp1hMVx2IZAYZw5wlQprIPgxAFJhAIDBABHAYMICKbURQBMbSKaZPa5YTBkqTgq-r7-ar1RjYRgGJ5qFBhDAMEQGNFHVoXW6PZIvc7I9IBPSAMxyv7HfhxhNJlNpjNZ52u92e8iFkh+4tljDlnVFugh6HDHySAAecAAJpNprM-gDuOtNttxIuICUIVDh8VShyWIFxMJmFByVBDFA6EYMGFIjE4twBywGG5MgPDSNScdJ8k0nuIFJHG4awiEPZgbyiWJbG-VAKG-CwWgecC73if51yIEwh2HEQ4E2WA4g6bp+nfYZoN-bw2EkJo4G4UjiN8dMQmg1DXFoyFK2WVZdgoaI7m4UcIEna9wgg6joMaZpWhnGZ9gOdjoQgOAx1IOTXE-bcIEcZxVzExJklSIo0ISapxJaUgEjGMg6LUkcGNCPFmKQ2JwTY0NjgXIwIB49Q+K0QTHOo3FohMyTMimaTNxU44FKUlTrJOBcAEJAtcW0tFtRIiGoaB4AeHcItc4ckwYCAtGiUJk3IDEsDgKjHCnVx-LlQKZQgIg2hKNhpy0VxaDoLBXCdJRlF0lIMFMOjh1caLlIKn4VNheEd2AZrdWqsFJGsFR+E+WaRt3bwY34UcjEQCs9QSWEElHCdp1C2cJpGQLbDZRa0OWvEZQANSpYQgggbaVMSppTLmSKRhy4Q73KuqMQAEUy-8iCgSdSp6+h+v806dUC-ZAc4izSFk3bjj9ZQAGFbgIbyt0m6FeqYZgHCcFxnp8YR7BgKHLtOQcGo+vn8XDYmPwSKkGAYzI-AsNEIAfASidp7dOIS6JQVXfgcmgS84FcawWIR8QkcnOVjRRmWdDiSHYjlycZJcxXJscIhUBth7Fbih3UM0lnSGiAAvbhueMgWEieoXPe+N3VJUuBDx1mnaaZrTbF9gOg+kUP+bDqko7iuKtHJdZpCMbg6jyRVSXMSwnbsJOdiWfgNC0XR9EMYw8CWFVXwxdRSFIVAjwEAQrXIBgfHCHDog29RuQwIJh60Ufx4IOBE2TGBPA9KBnTO3v+8H4e9PjNf63TaJiQgRVzGqRQVG4JvtEVG+hvvzRtD0AwjCfhQX7QRSqaUKPb+jAX6TlQOIZQDBgG32UNwaI0RwFtQAExXwErcKAGI4DGhsJIAg7NDaeQvlgkgOC8G2AIdEeExDWowFwfgkglDbQAD5bRLFVpwVAtg6CwNPKaC8X8UosKWMIKQK9uDcFliYTwLxGSMhMIgSRqDzAP2UJ0dAfAyTNDKD4AA7Dca2fxnYyzSJkACPBJxKAiARXoAxfCGCMLdVwXQbEJDuK6HWmR+AwGNmADCfxAikCMGUfgOhhpoFQNKP4uieilSMHkKAyhOA8HYtAckdAlDaJ0VkE86SGBAQ2kEzxYAYmeSCfExJ+5TC4HYsBcQuTMkTCICBXJGjJrrRlsEsAdA2rWBgJE3aui8haAiLsC8sdOlDIgFYl4cp1BJFWEUveA9EBD2oGsjA0QmnRCvMQPpvjqkDJ0ZMkZ4gxkvl1Mc1wSDZnzM6Usg+azqAbK2TsmwF9oR+IKgAYlGGeI4voKAzWhLoimDBJytOHEkqQCkpIDHmmeYQ9U7ozAOZNFGhdvzUmRXC3aATCm6lBdOdQcBkZUn6ZNP+Y4AEMGRPuVA+4MRKBJWTdQgD3knDou+T5wxEUMBepLfwMs1z0rMq4JJIqFYjHFfuCUTKoAssAfCJIAkqRqP-qyml3AE7DEpRC6EFinBlGoaQ+hnlUXDlIMoGCnS5XkuHJzdAqNMhQHvGDMcZQDVwHNZNYamRTziBYHARkLxvXDmOuc3hkh+HGF2g9OYzDWG7SgGOWwyhk3rBolgyQnNDwAEkIDtENrcMoKDBHpR+VsGAdAqRitWN+Ag2bnBpD1hEOAyQVLJtsNSngmlIhItcGFWYZaO0prTWODNnN3WZFpK43BEROgEzKLSKy75SQmDAN8N4QA", # nolint
    "app",
    header = FALSE
  ),
  full_screen = TRUE,
  style = "width: 393px; margin: 0 auto; float: none;"
)

## ----eval=FALSE---------------------------------------------------------------
#  library(shiny)
#  library(shinyMobile)
#  library(apexcharter)
#  library(dplyr)
#  library(ggplot2)
#  
#  data("economics_long")
#  economics_long <- economics_long %>%
#    group_by(variable) %>%
#    slice((n() - 100):n())
#  
#  shinyApp(
#    ui = f7Page(
#      options = list(dark = FALSE, filled = FALSE, theme = "md"),
#      title = "My app",
#      f7SingleLayout(
#        navbar = f7Navbar(title = "Single Layout"),
#        toolbar = f7Toolbar(
#          position = "bottom",
#          f7Link(label = "Link 1", href = "https://www.google.com"),
#          f7Link(label = "Link 2", href = "https://www.google.com")
#        ),
#        # main content
#        f7Card(
#          outline = TRUE,
#          raised = TRUE,
#          divider = TRUE,
#          title = "Card header",
#          apexchartOutput("areaChart")
#        )
#      )
#    ),
#    server = function(input, output) {
#      output$areaChart <- renderApexchart({
#        apex(
#          data = economics_long,
#          type = "area",
#          mapping = aes(
#            x = date,
#            y = value01,
#            fill = variable
#          )
#        ) %>%
#          ax_yaxis(decimalsInFloat = 2) %>% # number of decimals to keep
#          ax_chart(stacked = TRUE) %>%
#          ax_yaxis(max = 4, tickAmount = 4)
#      })
#    }
#  )

## ----eval=FALSE---------------------------------------------------------------
#  f7TabLayout(
#    ...,
#    navbar,
#    messagebar = NULL,
#    panels = NULL
#  )

## ----eval=FALSE---------------------------------------------------------------
#  f7Page(
#    options = list(
#      dark = FALSE,
#      filled = FALSE,
#      theme = "md"
#    ),
#    ...
#  )

## ----eval=TRUE, echo=FALSE----------------------------------------------------
card(
  shinyMobile:::create_app_link(
    "NobwRAdghgtgpmAXGKAHVA6ASmANGAYwHsIAXOMpMAdzgCMAnRRAVwhiLdIAoAdMAPQsAzgwEAbAJZ0BWCdIZQGATwHCAFpIjKAskTqTxcfgEpeEAiNJEYAfS3DSUceIAEAHgC0rgGZsCpJIkrtyoUAQA1lAA5nDCuK4McKhEwq4AvK4AcgCqADJ5CVo+RBnZ+YWuUnRluQUJAI4sknCkZQBiAIJ5AMoAognmrsOuHFxlACpYOX0mruYgQyOSPiGSwhgQLC7c1SZzixAjx1XSHt4Y1QAKUKTqwtwmwMAAjAC6b0vDAL5fritrDZbHZJFLCfauQ4nEag1LnVyxUgAeVQgRIfBo9AYtlQEWitlhwlMf1+RxGADc4Ax4fwACwYekABn4f0p1K8COELDoGN4fN4GGAAD0MG8ANQAEn4gzA0tcbLMZOGhPh0S5PP4AileHmsp1hMVx2IZAYZw5wlQprIPgxAFJhAIDBABHAYMICKbURQBMbSKaZPa5YTBkqTgq-r7-ar1RjYRgGJ5qFBhDAMEQGNFHVoXW6PZIvc7I9IBPSAMxyv7HfhxhNJlNpjNZ52u92e8iFkh+4tljDlnVFugh6HDHySAAecAAJpNprM-gDuOtNttxIuICUIVDh8VShyWIFxMJmFByVBDFA6EYMGFIjE4twBywGG5MgPDSNScdJ8k0nuIFJHG4awiEPZgbyiWJbG-VAKG-CwWgecC73if51yIEwh2HEQ4E2WA4g6bp+nfYZoN-bw2EkJo4G4UjiN8dMQmg1DXFoyFK2WVZdgoaI7m4UcIEna9wgg6joMaZpWhnGZ9gOdjoQgOAx1IOTXE-bcIEcZxVzExJklSIo0ISapxJaUgEjGMg6LUkcGNCPFmKQ2JwTY0NjgXIwIB49Q+K0QTHOo3FohMyTMimaTNxU44FKUlTrJOBcAEJAtcW0tFtRIiGoaB4AeHcItc4ckwYCAtGiUJk3IDEsDgKjHCnVx-LlQKZQgIg2hKNhpy0VxaDoLBXCdJRlF0lIMFMOjh1caLlIKn4VNheEd2AZrdWqsFJGsFR+E+WaRt3bwY34UcjEQCs9QSWEElHCdp1C2cJpGQLbDZRa0OWvEZQANSpYQgggbaVMSppTLmSKRhy4Q73KuqMQAEUy-8iCgSdSp6+h+v806dUC-ZAc4izSFk3bjj9ZQAGFbgIbyt0m6FeqYZgHCcFxnp8YR7BgKHLtOQcGo+vn8XDYmPwSKkGAYzI-AsNEIAfASidp7dOIS6JQVXfgcmgS84FcawWIR8QkcnOVjRRmWdDiSHYjlycZJcxXJscIhUBth7Fbih3UM0lnSGiAAvbhueMgWEieoXPe+N3VJUuBDx1mnaaZrTbF9gOg+kUP+bDqko7iuKtHJdZpCMbg6jyRVSXMSwnbsJOdiWfgNC0XR9EMYw8CWFVXwxdRSFIVAjwEAQrXIBgfHCHDog29RuQwIJh60Ufx4IOBE2TGBPA9KBnTO3v+8H4e9PjNf63TaJiQgRVzGqRQVG4JvtEVG+hvvzRtD0AwjCfhQX7QRSqaUKPK+EAUguHhJOW4UAMA+EUPAPgZJt7CFoNSbu-AACacQzpZCIKYXASwjjdwAEwAFZaQJEIaWAAHIqYBD9lCdHQPA4YzQyg+AAOw3Gtn8Z2Ms0iZAAjwCBDAIgEV6AMXwhgjC3VcF0MRCQ7iuh1pkfgMBjZgAwn8QIpAjBlH4DoYaaBUDSj+OwiYF48hQGUJwHg7EwgKUPGUJw0Q8jrBsbtdhNx7FMNplonRyiwB5DgD4NonjY4VmFr9b8uiwBGGCcY4WHjt6xwtlsbxisHAhVcGFAYYNhjWKkApKSOThbDAAMSuByMIHWG0WyuGTLrC8U0TySGiLcP6rgSDiGULk3wHCkniAAJLkBgGkh2Tg6BZDwtE8ZVTSCeDMXQF48TPbDF8Uo3UExSgLNcEsjuJTljGlYWwgZxoMQlHEN+BguCenDHCIESkRSekaP2Yk+xQzXSjMVuMyZ8BpkXlmfMi8hDlkrLWdEzZWTGnAr2Ss-4hzJbHNOfwCIcBlB0CRgwNRUdjjPM9q82O7yRk3IaRMqZ-iZmtEBXQPseD9mrI2n4jZWzGk0uJZIeFvSTnon4OISxP1bDOGUuop5YMMLzGFkEnwcAAjRJ8IbNpnkWS7VxcOfFq4wX+KwC03urhQniDlJE9Z1ZtVCqumwgAQobSIGJLUXl5bg1wkrpVtH8XKpGgRFXCoKiqqKJ46BKCOZM8k-qGCfJGBqjZ-zXAWKsfuEF0J1BnmfFodZ2TaWTViaQPVRT03DlNNEXu2a7ozHYj6kYpj-lhtuSVTm5BpFpsBtI-gFLTUqQrRqYWEb+DbN2bmya3yyWRsWfG7cHL2FctlkdEClzrnCzuZIB5xbimK3YRTTFVaTj5JTTm+aZ4qn1tnH2k4KNC6XJ3XS3WDKjVgDXdOdQcBkZUhHYrP+Y4AEMGRPuVA+4MSoBaBfT2Ucy3HHbRu+l2jr3bOhUe6EA7fn+IWdBsG7LggIonRiFFaKMVYpgycVdShJxgZGFuwpS7cPKj3fVMjKkT2SDPdRi9Xab0EdcPex9VyYUrNfe+z9-cf2NwILcUeAGHZAfI70hZRGmPbNZZ2i8PzIMXlk+ksdiLuUxL5QwdmgrZ0rrYbeojeT9wFNTYe3d6wqNZLM7tWj9GrMzHE7Bq90Tb2sYfTOzjeK2E9E5h+nosdnWGZOPwU8po7Xt0c8Ofgn0lCSHC2kPWGhMpY0i9CAgGIybKAKZcokYBokECy8+lZ3bFAaRgOsX6JB+DRNgEVz2-AADiD6tPVf8bEJQunYUdJghAAZBDdQaDgK0OrtMYDbECKgRl2TiXAZ8eFpEX7+NgAgU4ETisgOlr+O+FVVSGAvUlv4GWa5v1mQ6Yt07VThCVcvi5P45TTQvUm21P4K38IciSPOyk98aoYFhrcaiPRlAbD+5VOY3hSyMgSID4H-3HgJDoMNTIWgTsSgR7jf6oZrEo7-Trd7sEqQMP-omj93AE63JgmODdK2oBlFAeIcTpBlAwWiTjkbnN0Co0yFAe8Y4yiIOQQkRHU0HpWWAccLH+4JTuiE1SeESQBIE4pzx0n7FX1U8gWUGApBBNaYZ0z690u+5Ps8ycdnf7PJ8-vGDXnmRqBmTBkLmAqAgpg2Oi+VwBX9XKs26GSO5h-ehnKdT8ZRhuHnYlNTuX+OGALJLmT0Y2ulDCGAAkdLKjndymR5L0LcXtZisnOLVAoj+g7WON8C6CM8J8Ps3OMkpITBgG+G8IAA", # nolint
    "app",
    header = FALSE
  ),
  full_screen = TRUE,
  style = "width: 393px; margin: 0 auto; float: none;"
)

## ----eval=FALSE---------------------------------------------------------------
#  library(shiny)
#  library(shinyMobile)
#  library(apexcharter)
#  
#  poll <- data.frame(
#    answer = c("Yes", "No"),
#    n = c(254, 238)
#  )
#  
#  shinyApp(
#    ui = f7Page(
#      options = list(dark = FALSE, filled = FALSE, theme = "md"),
#      title = "My app",
#      f7TabLayout(
#        panels = tagList(
#          f7Panel(
#            title = "Left Panel",
#            side = "left",
#            f7PanelMenu(
#              inset = TRUE,
#              outline = TRUE,
#              # Use items as tab navigation only
#              f7PanelItem(
#                tabName = "tabset-Tab1",
#                title = "To Tab 1",
#                icon = f7Icon("folder"),
#                active = TRUE
#              ),
#              f7PanelItem(
#                tabName = "tabset-Tab2",
#                title = "To Tab 2",
#                icon = f7Icon("keyboard")
#              ),
#              f7PanelItem(
#                tabName = "tabset-Tab3",
#                title = "To Tab 3",
#                icon = f7Icon("layers_alt")
#              )
#            ),
#            effect = "floating"
#          ),
#          f7Panel(
#            title = "Right Panel",
#            side = "right",
#            f7Block("Blabla"),
#            effect = "floating"
#          )
#        ),
#        navbar = f7Navbar(
#          title = "Tabs Layout",
#          hairline = TRUE,
#          leftPanel = TRUE,
#          rightPanel = TRUE
#        ),
#        f7Tabs(
#          animated = TRUE,
#          id = "tabset",
#          f7Tab(
#            title = "Tab 1",
#            tabName = "Tab1",
#            icon = f7Icon("folder"),
#            active = TRUE,
#            f7Card(
#              outline = TRUE,
#              raised = TRUE,
#              divider = TRUE,
#              title = "Card header",
#              apexchartOutput("pie")
#            )
#          ),
#          f7Tab(
#            title = "Tab 2",
#            tabName = "Tab2",
#            icon = f7Icon("keyboard"),
#            f7Card(
#              outline = TRUE,
#              raised = TRUE,
#              divider = TRUE,
#              title = "Card header",
#              apexchartOutput("scatter")
#            )
#          ),
#          f7Tab(
#            title = "Tab 3",
#            tabName = "Tab3",
#            icon = f7Icon("layers_alt"),
#            f7Card(
#              outline = TRUE,
#              raised = TRUE,
#              divider = TRUE,
#              title = "Card header",
#              f7SmartSelect(
#                "variable",
#                "Variables to show:",
#                c(
#                  "Cylinders" = "cyl",
#                  "Transmission" = "am",
#                  "Gears" = "gear"
#                ),
#                openIn = "sheet",
#                multiple = TRUE
#              ),
#              tableOutput("data")
#            )
#          )
#        )
#      )
#    ),
#    server = function(input, output, session) {
#      # river plot
#      dates <- reactive(seq.Date(Sys.Date() - 30, Sys.Date(), by = input$by))
#  
#      output$pie <- renderApexchart({
#        apex(
#          data = poll,
#          type = "pie",
#          mapping = aes(x = answer, y = n)
#        )
#      })
#  
#      output$scatter <- renderApexchart({
#        apex(
#          data = mtcars,
#          type = "scatter",
#          mapping = aes(
#            x = wt,
#            y = mpg,
#            fill = cyl
#          )
#        )
#      })
#  
#  
#      # datatable
#      output$data <- renderTable(
#        {
#          mtcars[, c("mpg", input$variable), drop = FALSE]
#        },
#        rownames = TRUE
#      )
#    }
#  )

## ----eval=FALSE---------------------------------------------------------------
#  f7SplitLayout(
#    ...,
#    navbar,
#    sidebar,
#    toolbar = NULL,
#    panels = NULL
#  )

## ----eval=FALSE---------------------------------------------------------------
#  f7Panel(
#    title = "Sidebar",
#    side = "left",
#    effect = "push",
#    options = list(
#      visibleBreakpoint = 1024
#    ),
#    f7PanelMenu(
#      id = "menu",
#      f7PanelItem(
#        tabName = "tab1",
#        title = "Tab 1",
#        icon = f7Icon("email"),
#        active = TRUE
#      ),
#      f7PanelItem(
#        tabName = "tab2",
#        title = "Tab 2",
#        icon = f7Icon("home")
#      )
#    )
#  )

## ----eval=TRUE, echo=FALSE----------------------------------------------------
card(
  shinyMobile:::create_app_link("NobwRAdghgtgpmAXGKAHVA6ASmANGAYwHsIAXOMpMAdzgCMAnRRAVwhiLdIAoAdMAPQsAzgwEAbAJZ0BWCdIZQGATwHCAFpIjKAskTqTxcfgEpeEAiNJEYAfS3DSUceIAEAHgC0rgGZsCpJIkrtyoUAQA1lAA5nDCuK4McKhEwq4AvK4AcgCqADJ5CVo+RBnZ+YWuUnRluQUJAI4sknCkZQBiAIJ5AMoAognmrsOuHFxlACpYOX0mruYgQyOSPiGSwhgQLC7c1SZzixAjx1XSHt4Y1QAKUKTqwtwmwMAAjAC6b0vDAL5fritrDZbHZJFLCfauQ4nEag1LnVyxUgAeVQgRIfBo9AYtlQEWitlhwlMf1+RxGADc4Ax4fwACwYekABn4f0p1K8COELDoGN4fN4GGAAD0MG8ANQAEn4gzA0tcbLMZOGhPh0S5PP4AileHmsp1hMVx2IZAYZw5wlQprIPgxAFJhAIDBABHAYMICKbURQBMbSKaZPa5YTBkqTgq-r7-ar1RjYRgGJ5qFBhDAMEQGNFHVoXW6PZIvc7I9IBPSAMxyv7HfhxhNJlNpjNZ52u92e8iFkh+4tljDlnVFugh6HDHySAAecAAJpNprM-gDuOtNttxIuICUIVDh8VShyWIFxMJmFByVBDFA6EYMGFIjE4twBywGG5MgPDSNScdJ8k0nuIFJHG4awiEPZgbyiWJbG-VAKG-CwWgecC73if51yIEwh2HEQ4E2WA4g6bp+nfYZoN-bw2EkJo4G4UjiN8dMQmg1DXFoyFK2WVZdgoaI7m4UcIEna9wgg6joMaZpWhnGZ9gOdjoQgOAx1IOTXE-bcIEcZxVzExJklSIo0ISapxJaUgEjGMg6LUkcGNCPFmKQ2JwTY0NjgXIwIB49Q+K0QTHOo3FohMyTMimaTNxU44FKUlTrJOBcAEJAtcW0tFtRIiGoaB4AeHcItc4ckwYCAtGiUJk3IDEsDgKjHCnVx-LlQKZQgIg2hKNhpy0VxaDoLBXCdJRlF0lIMFMOjh1caLlIKn4VNheEd2AZrdWqsFJGsFR+E+WaRt3bwY34UcjEQCs9QSWEElHCdp1C2cJpGQLbDZRa0OWvEZQANSpYQgggbaVMSppTLmSKRhy4Q73KuqMQAEUy-8iCgSdSp6+h+v806dUC-ZAc4izSFk3bjj9ZQAGFbgIbyt0m6FeqYZgHCcFxnp8YR7BgKHLtOQcGo+vn8XDYmPwSKkGAYzI-AsNEIAfASidp7dOIS6JQVXfgcmgS84FcawWIR8QkcnOVjRRmWdDiSHYjlycZJcxXJscIhUBth7Fbih3UM0lnSGiAAvbhueMgWEieoXPe+N3VJUuBDx1mnaaZrTbF9gOg+kUP+bDqko7iuKtHJdZpCMbg6jyRVSXMSwnbsJOdiWfgNC0XR9EMYw8CWFVXwxdRSFIVAjwEAQrXIBgfHCHDog29RuQwIJh60Ufx4IOBE2TGBPA9KBnTO3v+8H4e9PjNf63TaJiQgRVzGqRQVG4JvtEVG+hu4aJolQQ3SAAJifhQX4fluBgjC-0YC-NAikqZKFHiA2+yggLqFdLcSQBAr7rgYM0UgZEWK3CgBgHwih4B8DJNlHW3d+CdHQEYIkOp+BIkUJ5OIZ0ABC29WHUJlEwsWCFTC4CWKecQLBSGuAINwWktIEgAFYJEJAAGwAHYEgAA5SyKlQXcRBgQCC2AAXxTsZR+BQH3EQC+5gFLUFsDAUgBAlBYKSBocBRCSI4LKAg5G3BLHWIYOCXhZJJCTlPNSTI-AODfnENKPhQ1UaZAAjwER-BJyKGUjQmgST9g+OGIEHKZQ4lgASbcM61BUnpJYpIJIAQ-r6LAIbTy4SyTklwlkoJYB+GCNqSRcWqBskYhgKgc+ySCDKDCck9QqAzoo0cGdBowg4AEDOuSdhupYBnViEoM6ni6AX1QQAihLsljNDKD4ORNxrZ-ECKQIwlSegfw2lUKAyhOBJOKSOORVypCkDyHch5jiTi-W-HQJQByjnb1jt86EZyLlNJ6H4+gqyO67V+UI-gRgfCPJjj4HwMy2hNNQCIdQbThzOxlmkaJ6weBg0Lr9bWTCkhQAiCkReZQ5GMmZLtDCKlDk3AUuIC2WxQXblurqeAWx8WOz9CQaIUkBhgw5cC8QABJcgMA+WTScHQLIeFKmqpeCK2m4LEVgAmBeVw2q4We2QcESWci5XGgxDVFgzhbAEFKQQIwPCwbDHCIESkkqwZsuFjKrlCrXTKuHKq9V8BNUXi-jqlVG0IW6kNTUaNpqHbmqOJa616J+B2odU6hgLr25R2GH6xWAbY5BqVe63WF5w36tVX2J5uq436sTa4BtVa02AszbLbNTRc3OtdWAItrgo4lqwpIJE+4cVkrANMowAQpwpwvBfaEY6oonn+YE3wcj1Xkk3SGjJzbLnXLaB8+5+4Y0jHUGeZ8WghFdF6FK3ayLSCctjj6gqa6RjAXEJuwFEwiAgX3SpdaMtKl0DatYGAl7nl5C0BEXYF531NLgxACIxq5TqCSKsJpe8B6ICHtQIjGBoiAeiFeYg0Gh2NuOIc1DCHxBIZfLqejrhk0JCw3AHDuo8MHyI9QEjZGKM2BXScL9wwADEowzxHF9BQGa0JDkVoeOyq1iqD3fprRqppWqYMjEOUw-c1ge1gGsG-IwPQEGtDOlcT+DUlB4VHtQ8TJxDmWbgK0DTbkBWNys6QE1NHhyMboMh3Utm2quBuAQ1oP09PHHTC0MgSCLW6gg33ETKbFbCGoPmOAAGyaG2mZKwL0J-mRASc7YrVa3NSG-AwLzJx+D6HYVW4Y-AsgsBgCF6kRBVjNapKeIlWMSvDhgN1TIjJzJQDHGUF4zLJutflM4QRZQJHMqrcOlzxxGCPBG8MD+bVJ3933BicZr7P6idXSNpT6mwZhu07qVV7GwbgLHJAhgyIp0nerMjWFo7rtqeDXdrTEadMXnbf6uRAHzPUQ7RAadcqfNgAO6QbR6hMpxZGMF0L-BLOZUi5-AA-Jj4YVMZkRHqndGYvq9uuFe+9z7x2Z0wG2IEAkyNJDOEu2J9idF3xjumQwF6kt-AyzXNOhIDyJeuGmcIX6JAFYjH60LuAfRKRkHF-uCUZnyNwHc60BICdhgsFQJOW4cB2gvL84uJHGgPP+e55HcwfxleUjV-JzXpAJTNcN+xBcWhp3e7oL+Vwa3GSK8UzutqKwGvkCUmUMIdVGQNbawahBMvatUiWwInW6xXAkHEMNOUAetc+91BgAncBkzGGFsMLQHoq9FY2iyYWW3ljGi7Ta-gEHxCo+OkMtvh7zn6s6EYD7mO9VYEkNEXuExFJYtcD0ZQGxYbm8eCpB6edUEu6+17xQZv2TeCSAJKkFCIHXo+9wI3dOYJjg02bpwZQzEWKsTYkbpBlAwUqfv2FI3OboCiTp3vDBhm0yBCVjlp2GkyBaTgFp1Vk4E6UyEyRr0mgeislQXi13wlDnUxUXVVXhGPzqxyDlSv3YgAAkJgdA8hoZyBk9+AyYnxj9zlhocCF1pxVVEBdQEhHBxZPJPcJQhUWAZISQMClcsCztws2gORCCqRJDSCCozsCDWoGAlUS8vdmsHpNBAIzt0DndQwpctcWde9JB2cUZnACDYJT9b8Gd5DoR-d4ctcUc0dMoI8ThXsaJnFJZ0ENoUIP8v8ml99OdxAWEGA5R-9UBACoB7xQCpo8IEgoDs9BFcYCot8lhSQTAwBvg3ggA", # nolint
    "app",
    header = FALSE,
    height = "1024"
  ),
  full_screen = TRUE,
  style = "width: 768px; margin: 0 auto; float: none;"
)

## ----eval=FALSE---------------------------------------------------------------
#  library(shiny)
#  library(ggplot2)
#  library(shinyMobile)
#  library(apexcharter)
#  library(thematic)
#  
#  fruits <- data.frame(
#    name = c("Apples", "Oranges", "Bananas", "Berries"),
#    value = c(44, 55, 67, 83)
#  )
#  
#  thematic_shiny(font = "auto")
#  
#  new_mtcars <- reshape(
#    data = head(mtcars),
#    idvar = "model",
#    varying = list(c("drat", "wt")),
#    times = c("drat", "wt"),
#    direction = "long",
#    v.names = "value",
#    drop = c("mpg", "cyl", "hp", "dist", "qsec", "vs", "am", "gear", "carb")
#  )
#  
#  shinyApp(
#    ui = f7Page(
#      title = "Split layout",
#      f7SplitLayout(
#        sidebar = f7Panel(
#          title = "Sidebar",
#          side = "left",
#          effect = "push",
#          options = list(
#            visibleBreakpoint = 700
#          ),
#          f7PanelMenu(
#            id = "menu",
#            strong = TRUE,
#            f7PanelItem(
#              tabName = "tab1",
#              title = "Tab 1",
#              icon = f7Icon("equal_circle"),
#              active = TRUE
#            ),
#            f7PanelItem(
#              tabName = "tab2",
#              title = "Tab 2",
#              icon = f7Icon("equal_circle")
#            ),
#            f7PanelItem(
#              tabName = "tab3",
#              title = "Tab 3",
#              icon = f7Icon("equal_circle")
#            )
#          ),
#          uiOutput("selected_tab")
#        ),
#        navbar = f7Navbar(
#          title = "Split Layout",
#          hairline = FALSE,
#          leftPanel = TRUE
#        ),
#        toolbar = f7Toolbar(
#          position = "bottom",
#          f7Link(label = "Link 1", href = "https://www.google.com"),
#          f7Link(label = "Link 2", href = "https://www.google.com")
#        ),
#        # main content
#        f7Items(
#          f7Item(
#            tabName = "tab1",
#            f7Button("toggleSheet", "Plot parameters"),
#            f7Sheet(
#              id = "sheet1",
#              label = "Plot Parameters",
#              orientation = "bottom",
#              swipeToClose = TRUE,
#              backdrop = TRUE,
#              f7Slider(
#                "obs",
#                "Number of observations:",
#                min = 0, max = 1000,
#                value = 500
#              )
#            ),
#            br(),
#            plotOutput("distPlot")
#          ),
#          f7Item(
#            tabName = "tab2",
#            apexchartOutput("radar")
#          ),
#          f7Item(
#            tabName = "tab3",
#            f7Toggle(
#              inputId = "plot_show",
#              label = "Show Plot?",
#              checked = TRUE
#            ),
#            apexchartOutput("multi_radial")
#          )
#        )
#      )
#    ),
#    server = function(input, output, session) {
#      observeEvent(input$toggleSheet, {
#        updateF7Sheet(id = "sheet1")
#      })
#  
#      observeEvent(input$obs, {
#        if (input$obs < 500) {
#          f7Notif(
#            text = paste0(
#              "The slider value is only ", input$obs, ". Please
#              increase it"
#            ),
#            icon = f7Icon("bolt_fill"),
#            title = "Alert",
#            titleRightText = Sys.Date()
#          )
#        }
#      })
#  
#  
#      output$radar <- renderApexchart({
#        apex(
#          data = new_mtcars,
#          type = "radar",
#          mapping = aes(
#            x = model,
#            y = value,
#            group = time
#          )
#        )
#      })
#  
#      output$selected_tab <- renderUI({
#        HTML(paste0("Currently selected tab: ", strong(input$menu)))
#      })
#  
#      output$distPlot <- renderPlot({
#        dist <- rnorm(input$obs)
#        hist(dist)
#      })
#  
#      output$multi_radial <- renderApexchart({
#        if (input$plot_show) {
#          apex(data = fruits, type = "radialBar", mapping = aes(x = name, y = value))
#        }
#      })
#    }
#  )

## ----eval = FALSE-------------------------------------------------------------
#  library(shiny)
#  library(shinyMobile)
#  runGadget(shinyAppDir(system.file("examples/tab_layout", package = "shinyMobile")))

