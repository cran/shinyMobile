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
    "NobwRAdghgtgpmAXGKAHVA6ASmANGAYwHsIAXOMpMAdzgCMAnRRAVwhiLdIAoAdMAPQsAzgwEAbAJZ0BWCdIZQGATwHCAFpIjKAskTqTxcfgEpeEWo2ZbhpKOPF8IAAmf8NW3fsPG851wxwqETCzgC8zgR8YOqkpKjCiAICDFrkDABmUARwGADmkqTqLHQYkkQpaXCZ2XAAtNRQwjB1BIoQAqbmZhDmUoxKytwe2j39iirDmtp6BkZjCoPcaHAAHgTqSukLA5MAJqjiygw7E0N5eYdEpABMPeZ7UHbRcMQQRDCSBMIA+uIkeS6EFeJA+X1+-wgeWcAB46s4Qe9Pt8-gDnABSAB86P8zjyDE4qB+dCGADclJIoHR5hjsbjhFIctxuBBuCY6gBGAAMXJMiFZJnuvQgI2UAEF0E5XCxJOFnBkAOwABSgeTgUtcziIqFI5RFcqktm4jwYAGs5QAxMUAGQAygBRXDywxGPaWm0Op1FODwOX8GB7Uy4XGuXWkIx+sA6ZTONCofjBlyaxW2rR5IzWqDKTg8EOa6CkuhKOWKgByUELSm4YYjEX4qahEcz2ZYpCDedDRCI4iLDBLCoAKl2e1WO5rgsJCnrI3RrqQPgmx65FdatKbuOIqXBxJHVxBzRyE851IEMpHYvFEslqDf8l307liDB20nNcmFXv15u6Nvd2vnDcR4nnAZ51jEcQJEkAg3tQd5EA+GBPkCb6uCYiYoc4ADEzgwFAWiRCQ5BkGOioAMJKHsGoYTmUjAnKA5YAAqo6S7OIokjCHAboRAxzHoRhzh7JIpKSHs1T0UxLGvihNZwJG5EMG66hwFAYkMIu0lvis6ybAwpAAPKtqgrbREoKmkbpbZgD0GE2ZqdlofS1SkuJEQZGwBC6iQ3BaMZpBOjmfkmM4IB5oFrYACRmVAFlbLC8KBBAakSmsGxbNwoWabGqBrFRKGPHYcqImCKKQnk-EYaQyg5ZG0UaQJOFxmmcpQHAwh5RhqxygVcAVQJMYROS4gsHAXIcn1GEZC6crkqkVJGKxdlvsFWI4llrhQKsPzKJtHHGq8ki4eIwgAJIQBa-xPHKdy0uiWHOBALAwD+fZEGeYkEId9ihPOzimnAQSsZtPxpXpwx2AQ-3cc4vH2itdLrbGW07ase24V1EQACxel8ppihwXBypjS3OAAvnZpPdGApMALpAA", # nolint
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
    "NobwRAdghgtgpmAXGKAHVA6ASmANGAYwHsIAXOMpMAdzgCMAnRRAVwhiLdIAoAdMAPQsAzgwEAbAJZ0BWCdIZQGATwHCAFpIjKAskTqTxcfgEpeEWo2ZbhpKOPF8IAAmf8NW3fsPG851wxwqETCzgC8zgR8YOqkpKjCiAICDFrkDABmUARwGADmkqTqLHQYkkQpaXCZ2XAAtNRQwjB1BIoQAqbmZhDmUoxKytwe2j39iirDmtp6BkZjCoPcaHAAHgTqSuk95sEOzgA8dc4AJlB2GBmK8E6uUBDCtAzhkdEAmnDC-LhuYAByRFMuH8zhcESiACYAKwAFh+EIAzAAOHo7B7TZQAQXQt2cLEkLwyAHYAApQPJwXGuIioUjlB4vKS2bhnBgAaxeADFMQAZADKAFEfhlDEYTlzeYKfkU4PAXvwYCcgSDXHTSEZ5WAdMpnGhUN8Vc5iQAVKB0HlQZScHiG1yoe5wcShCJ2PI8yTM22uI2kh2OL3e5xqjURfg8uAZUjOMkQR3fNwuQNJ4SSE5wTVGSMGxNJ73EmOOnQUFhU3PemxwKMRY1YACqQoDSetUljLxr9eBObLrgAxM5a8J04VZaEmkGzaCoAA3SR5c705wkcTKRuB-N+gCS5Bgpe7qrNf1g6dDYDsdEHpDqproAEZs3uk8Hj79jURnNfnHe-F2H5JiGCfQ3f9ogyIhxDTBhlR-PdsjpKdn3bAVV29ExOwfVx11jcQt1lXc9zPQ85RPM8LyvM0IXvdDVUKEMXzfD8KO-KjXD-EhCSJICSGiNk4GUOgiCUJUwB6KjUOQjDfSwnCd3E70CKPTUSMrMi6ARSiqKfTVX3fCc1KY5jWIA4lOIgaJxEtaphAAfXsUgumg3MRL3VCEwfCMMjgAgq1+DJxAEukIDyfhGzEhyfQLRxNJPLBZ1iaM-XjFM001VI8lieNiQAIT8gg2WibKzXMoFnHczzvP4Xz-K0ILhK9ULc2gKc6CUdjDyapQ8Oo9Vn34a9QgtK0WDs-Tc02SQGBbBC6wbMLM1ICK22mtCy1S2IFuraa6uWtciT6zrdQgSQYHOOBxQ2jtG1TRSzQvdSkxNM19q62jeonL9trLeSiJfM13uQwz2JMkCwIgqCH1gyR4MWi6wokgBhQSnu9ZstCmmHu0UD1TuhmbuxOSHU2qHGPofKLfgRhhxXUOAoFBkb0JWdZNgYUgAHkhtQIbolQSRfCch9+aTeqyweugkbJ166GcRiScfA8FJPa8Zf+-9AeA-geL4gTKbBvdiQpk4kepIbJuJxtMcHM73yWxt8ZnCCzdhx8aJ6sADecanaeqO7wdQNYNi2dn4i59wCHOdJ7NEkLZYk69xZdrTdJ9uW6EI13rz0mPy1ViJjPVsBzOUSybPEYbhe7fXEdklHW3O3GVqgLGrcQrO7cJ5466z3MJbdwSPZpumu-uok+WOlm+UdMqjaTfgpyUSRCt8Ifc34AA1efF9CUg3w0IhqEQZOHyifg4eUFsIK+MBNQIM-D-Q3r2maD0UxIfhNVgO+H34ABxGmGEvzUFIlC62YouP2EANwAXcNTSsn8ywwBYKXSQqBaKIVkq4cu6EzxGCDpzG0YAzh2EjuhQWgZSHOEFk5YWg4GDwQ7kaNgXl6TcC0Hgn41o2HOEHMIF+EATDOBAOYQ0fZUh0OcCgogdkuyEM+IcY4gQIbwWGHAAAjhgAAIidbgfJlDCA0Vo-hxwEQAAYfg6L0Zo8g3AXJ0B1BEVhQ0AAktiTBokDBwpxPN0xHGcIECAEFsT+2ZjwQR0FGb7UIVAF4exxBZ1IMoP2movF32OugaqLwoCfG4KsDJDwng-DsaCchgsAC+bjkYcyccIMOcQiY+L8QEv2TMtjcFCbmcJttzhRIiDAUgYd-5xISa7ap4dvb00DKknmgUMlZOQjkiI1BSBD0KTAVAeQh4in2OCW+YVimGjKUI3oXY+yROwcYLsHjSCOMiXI3xFAILXiMK0r0vT+nCGAD8Y+YBVk1R+A4q5c9UiLxcicBgNIJT8gFAAXX2T8MF1BoDwGdNbesTkSndDACUqFQA", # nolint
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
  shinyMobile:::create_app_link("NobwRAdghgtgpmAXGKAHVA6ASmANGAYwHsIAXOMpMAdzgCMAnRRAVwhiLdIAoAdMAPQsAzgwEAbAJZ0BWCdIZQGATwHCAFpIjKAskTqTxcfgEpeEWo2ZbhpKOPF8IAAmf8NW3fsPG851wxwqETCzgC8zgR8YOqkpKjCiAICDFrkDABmUARwGADmkqTqLHQYkkQpaXCZ2XAAtNRQwjB1BIoQAqbmZhDmUoxKytwe2j39iirceXmo4kSkAExjCoPDmtp6BkbLA5NocAAeBOpK6TsTQ0VwMFCkkgQ95hkMLIWhADx1zgAmt1AYz1gcCcrmg8HCkWiAEF0EZhPxcG4wAB5dp5ODwvBIgBCUGg0ExiP42OqqQxplw-mcADd7Cw4BCogAWJmIgCsbMRADYAOyIgAcAGYeo8yOprrd7gB9EZDDIkUgQ-hQFikIhdXoQCBwahSmCkAhKD5fQIafYgn5-CHiqDfbj6w0MYQmSkuZySb60hhKsAcb5wcQIqle5RaPIQqS2bhRfjfRSkBFI6gJsAmF1Uu7wUIRGNgOO3RP8ZMUqnfSSBAh3Eg+uYQPJBt3UjBgjE+2niekN1xxoioRnRGCoetY-gEZSBkcxVCFvOSWwzgCOwjgBBn1MJSNgM-RShnjroGtFsphqAtrwhGR5AAUoOiLa47qQjD6AMqzQrOcRQZScFOu1yuJeb5SKQAAy36-veAHCB69BKBe154gGUEAc4j7PhE-AvrBdC7n4bqoa4MH+jWcAZH+VKEc4ZEZCuiqYWAqAiOoXZUc4vZVhA2afnOPCUWx1JztIRjYoEUAANbBGkEI8gADLJ-GoemBGEZeN7auIOgUCwKGER6PrwBALCsWxzi2AwJDhhEAAqWAAKoAKL-qZzhqUh4gAJLkDAulUXYdAAHJAj6-kAIwmS56EMgx1lQHQzjhfhLkAfc1YRJeHnEBA0RwAuLD2FKBDlgQRglippnZHc1LRc4tmOYphHKclbkaV51y+YR-lBeCDH+QsEWmVFPqxfF-VJcl7pZQhmUkDleUFUVDAlb4PTJU1LktQGbU+Q1flxd1NX8P5goDWxQ0xXFzgneNyWpS46U8jN2X8Ll+XiIVxWlamu0AatbHrVRrzIqqTF8WAy5GJWcDfFK-kalRAMAdA1K4d6D1BSjSgdedSLAR+4E-qqp2uCc5ZSNqEIAGJQqBL5OT9RjkepAYQnVDkNYjD5EEQ4iowh1nc7zWM-cEMGcT6dDzGqMDE65PKgVo4ncF+dAswxCsQOJCWJuogQZD6sTxIkyTUKb+Tc3kRgYMQMups5VGXhrSsq2rSJO84Y2IrrZEG3ECRJAIpvUObRCW7kNvw419sAQAxM4NxaJECoUAm5Vy9twgdRl3kdQ++3Bb1cWJdHDs8tiqpqs9YBqtMRgvuKcB-kiV5zIqqBKEC6SYpzqk8vXcCN7nKXfD6GgD6Qxc-ahLviD6LfzM4N6KPAXey6hRBkmQkppUiktxEQtsl2xwjUJIqBwALADCczLqz9n02nVG4QQ4k9n2Nn30fpcvlI-oMEPqF+D6EJFPQi-AAosBgKrb0RB9bAOqLSTiiQ16ERgInCIslEQ3AOBCUK8lMGgNQu2ekEI2TyUIc4P6pke6oUYNwGhAFZjzGBvEVU0Qyy2HnimKhUcfrZ3aqArqBckR9RQfsI4JwGCkBYaDaIihfgMEjgjL+6cc6CPzj1ERcVroqMAjyAWtdgQUK0KDDyI8GJMNIDKdQRBqAoNcDPV8NjqCL1bgAfnsZEcUL9oZ33qo-X6ujnDiOOKcGRbD+AwBYOIO4Up5GSHsEoxqHN+J-XWsuBg1U0auTYJWco2UTGqkRL+UGiJlzCBgiQEwzgQD8XgZkuADlqpkG4IU0gAASGuYd+6N0RLUtOLBUC-HIJTPuDceD6QYmPRuiUeEAF9RTrzoBk6qTSU6tIgKDdpwC+kNUkPrDZWzgHOHeM4Mhslqn9NMpeAK8x9lD3IAceizh262DgLJABSJrLijMr-aoNI6QMjnOxCA4hlBIkRG07ZyyiRgAwK4uATRjABNQloNoiLb6FH4KAhhrg7rTSytESWMSpQZEMBOXFaFCgYSRFCIwUiUFRSwJIPIsRrKHGeS+ZQwgMAABFbjAh4UpBqcz+ILPMBKlSJTVTtPkfBT4zhAgQD-jCQ4oSpHcCuYRcRHVhlQAhNqXUDojQqNIMoc+Po5WKJuqgtAqAwwQigBiIeOCIh+gDEE8FERiFwCCXkCygyISZmRdQlJKlxWanXiDGVEM6LQ1hpdBVSq-52Q8pqhqAAJayOhQLcFeeQD5-BL4sAYEqp84LY1QxHv5RAEKzKkAsnWQ5MrDIsDTPMxZAFpUdI4aQLhJyTQUD-lw9Nade0DsVRADePkoXAKFc4TQUZe0dslVG1hHSokxMkHE20CTZ5JqHdUVVEjTijqovs5wzaOmWOsbYy5P0dV6ovC8N4iIzUWoYvE+wuJrVYLtQ6iITrM6uucC2REXqAUdjgGmEVYq-qiogCYMAcyAC6QA", # nolint
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

