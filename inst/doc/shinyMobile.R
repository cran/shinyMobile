## ----echo=FALSE---------------------------------------------------------------
knitr::include_url("https://rencontresr2021.rinterface.com/")

## ----setup, echo=FALSE, message=FALSE-----------------------------------------
library(bslib)

## ----eval=FALSE---------------------------------------------------------------
#  f7Page(
#    ...,
#    options = list(...),
#    title = NULL,
#    allowPWA = FALSE
#  )

## ----eval=FALSE---------------------------------------------------------------
#  f7Navbar(
#    ...,
#    subNavbar = NULL,
#    title = NULL,
#    subtitle = NULL,
#    hairline = TRUE,
#    shadow = TRUE,
#    bigger = FALSE,
#    transparent = FALSE,
#    leftPanel = FALSE,
#    rightPanel = FALSE
#  )

## ----eval=FALSE---------------------------------------------------------------
#  f7Toolbar(
#    ...,
#    position = c("top", "bottom"),
#    hairline = TRUE,
#    shadow = TRUE,
#    icons = FALSE,
#    scrollable = FALSE
#  )

## ----eval=FALSE---------------------------------------------------------------
#  f7Panel(
#    ...,
#    id = NULL,
#    title = NULL,
#    side = c("left", "right"),
#    theme = c("dark", "light"),
#    effect = c("reveal", "cover"),
#    resizable = FALSE
#  )

## ----eval=FALSE---------------------------------------------------------------
#  f7Appbar(
#    ...,
#    leftPanel = FALSE,
#    rightPanel = FALSE,
#    maximizable = FALSE
#  )

## ----eval=FALSE---------------------------------------------------------------
#  f7SingleLayout(
#    ...,
#    navbar,
#    toolbar = NULL,
#    panels = NULL,
#    appbar = NULL
#  )

## ----eval=TRUE, echo=FALSE----------------------------------------------------
card(
  shinyMobile:::create_app_link(
    "NobwRAdghgtgpmAXGKAHVA6ASmANGAYwHsIAXOMpMAGwEsAjAJykYE8AKAZwAtaJWAlAB0IdJiw48+rALJF6tanGGiGzNuzRwAHgW4tyjFWPUcAJqmqsjIkxPYBzB5aKkATCpFmopKOyFgcMQQRDC0BJwA+tQkDgEqQSSh4VExEA4ABAA8ALQZiSFhEdGxGQCkAHxlIhkZDoxEAK6okfQcAG4stFD0SgLlVTUZnHQEcOzsEOwCOQCMAAzzAohTAp4QIlL8AILo-hC1jbQZALwZAGYA7AAKUA7jQ7VEqKS0JJynGXScpOzejABrT4AMW2ABkAMoAUVwF0USjMIPB0NhpG4cHgnwCMDM8Vwjwyr1ISixYBkrAyaFQAXxB1qF0uEL4DiUYKgrCavwJtWg7XoLE+VwAclA+Sx9vTJYTaMS4KSmekSWyOY1SDTufT9LRGHQIHKzgAVLAAVRhGtqPCgZiIAHdPkbTRqBLSpYSiERqPzGILLgb3Z7xeaMqgiJwZW8DmcAvRXKRQuq6a6rmC+AD2NQenBqKSUxAgbMaRluIw4OdSdxSKRUJxEAB6Ws2xsYBzullwDDEGB4oPJ1PpzPZqNgXNAtyF4ul8uV6t1htNltENsd+NgFSu50agDEGRgUD4GWC5DIGquEP01ptEtdGT4R7DpApZ1mADYXdfuER2nBvYaTWbE1KVwAMIsGYV7XtKsqkiBjCIuiVrfgmEG1Fouj6IwpAAPKqqgqr+CgJZQEB6FqquQZrlKFG1BRG50pw35fj+FyNBABCvCQ7B8LhpCwpy3H9CABJ8aqAAkLBwERJHZHkJYQGY367DoegGOwgkAShqA6OBUreL4nwFMkxRpA4b6ug+mmkuJUBIdeu7oMynxQHAnDaa62ifLpcCmdej4ZJ01CNHA8yzN5Sbwp8nSMN0vRwORToDNU6n0lA2iRKwKW0C58kELQu7UJwACSEDAjEPifB4CUZNuECNDA9DfhkRBltluVQPlboZACcBwNSSUoalykYVwvgEF1iK-qa-SVIlEEpWlGUubu7lnAALKi4QAtsMBNGQnwrVRGQAL4UYdIgCGAh0ALpAA", #nolint
    "app",
    header = FALSE
  ),
  full_screen = TRUE
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
#    slice((n()-100):n())
#  
#  
#  shinyApp(
#    ui = f7Page(
#      title = "My app",
#      options = list(dark = FALSE, filled = FALSE, theme = "md"),
#      f7SingleLayout(
#        navbar = f7Navbar(
#          title = "Single Layout",
#          hairline = TRUE,
#          shadow = TRUE
#        ),
#        toolbar = f7Toolbar(
#          position = "bottom",
#          f7Link(label = "Link 1", href = "https://www.google.com"),
#          f7Link(label = "Link 2", href = "https://www.google.com")
#        ),
#        # main content
#        f7Shadow(
#          intensity = 16,
#          hover = TRUE,
#          f7Card(
#            title = "Card header",
#            apexchartOutput("areaChart")
#          )
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
#    panels = NULL,
#    appbar = NULL
#  )

## ----eval=TRUE, echo=FALSE----------------------------------------------------
card(
  shinyMobile:::create_app_link(
    "NobwRAdghgtgpmAXGKAHVA6ASmANGAYwHsIAXOMpMAGwEsAjAJykYE8AKAZwAtaJWAlAB0IdJiw48+rALJF6tanGGiGzNuzRwAHgW4tyjFSNRFq1AAQAeALQWAJlFJQMAM2bx2IixagROAO5wjBYAvBYEXmAAmnCcQngWCQByRAkCuN4WEGER7ABMAKwALLgW+QDMABwqxv68-ACC6F45FgCutLmuAOwAClAA5nCtPj5EqKS0JJy5dJyk7I6MANa5AGKNADIAygCiZa6KSvYb2-tlpNxw8LkJMPbpmW0+U6RKd2AyrL7oCc9jCy9AAqUHoWygrCI7UWWUBqD8cGos3CzkGW1oC1GgLGvQGECR7DeH3CCS2cFcpAs+KR-wsnFo9jgnyUlLpVxuzNJNFog24pDpCQAQtQwaK6RTXHACFTucQAG7BJ5wnF4xHUIm0d5cpJgLC8-nU9V0hlMz6MA0CxIc27c5YrQVgEViqAS1xSmWfBVKsAqHEWDIqnzQeX0FjdHrJKChljY-3EnUJUH0eJ4INjfS0Rh0Am5YFYACqB3TPh4UHsRACecLxZeONZpBplnC+aLAP9FgtfMb6urRfTgbrPhBYM4cZxfloMCccFOLZr7f9AGJArRUHAxTrW7WO0Cesnx-GtSTdcmLABGf4lsbOehR22nsGXtNDnG0Yg5cK9ACSH6irjMJlGGVV9ASgGVaEVPta2vYceh2fQKwCQ8Oz4ch-C1H5wnPAAGRddwsbgiEVEJ5zbWDcR6ABhFh7BQ3cE0+GjGFOa5yx9fCCN+HQ9AMAB5GFUBhKJUFoOB0gonw-QI6T-UHXcR3oeib2PRMwDPfIr1Am8wXvNTk00l8uPfEgI1-EgohWOBWHoIhaJArjwKmKDwk2XYdwI3oEPLStlMBNCKAZUgsIvPDJMI4jgmgziO16Zi6PC15VKY2jCI3ICtK4sD110fRGFIATSCE2EwE4AgnEMCTtMBWSO1qmqYrgg8KMY7kzwqTKCNvPTPmTDqjIIkzPz3cyICiUVWGCTgAH0oGoK15IIpzIJ1NyLgorzEN88KAow4LclwxqcSIkjovCuLaL8nFWt1eK0vY4CBqyvcdmnfKdiRaVYWqjsEnlFhaE3Trnp8BIADUAc3WZSCIekiICRBgZByIEio1gcyA1MvXRpGQdPZh-BgTEGRIBJPlgXGQYSABxDdGCx7lhhYBy8YsCYKG-YaEh4OA4CtI7dxgdp5rXE9t0SgMBeuzdCuKqJHGcKrnvqnEVakgcVWkxbOGCU6v3aCAIIsvhirKaEiphModc4EmIAECwQBEFUl07FaQlQagiAFOsFbiaw7EYDcIMVLg4AARwwAARGd2B2VhOCjmP7bsCo8IsOOE+j8h2AyCx6BCk2YQAEnzgQ6kBc3iqL0TmVsTsKCA5oeLyxZHdfLRtGUhWoFyUxzCO4L10+GvKZ8ad0D4QZcigOJ2G0af-CCRgyhCu2NbrABfcuxkr4uyoqqK68DiBG5y3j8vYNv-Q7runB78IYFIcr6YH1gh+5ffSEqp6cXH0SICnuEGeY4KLz3CAEUgUsQowFQIMKWRxzC5AIDjbSKtapbydhAZ2Dg763iUCqXepAi7d39vXE+wRkxKEvumR+z9ODADKCjMAMDBh0kLkQ-6FpNy53sIwCYZx3IAF0VQbzKHwgI0B4AogsNuaSG8RACDABvQRQA", #nolint
    "app",
    header = FALSE
  ),
  full_screen = TRUE
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
#          f7Panel(title = "Left Panel", side = "left", theme = "light", "Blabla", effect = "cover"),
#          f7Panel(title = "Right Panel", side = "right", theme = "dark", "Blabla", effect = "cover")
#        ),
#        navbar = f7Navbar(
#          title = "Tabs",
#          hairline = TRUE,
#          shadow = TRUE,
#          leftPanel = TRUE,
#          rightPanel = TRUE
#        ),
#        f7Tabs(
#          animated = TRUE,
#          #swipeable = TRUE,
#          f7Tab(
#            title = "Tab 1",
#            tabName = "Tab1",
#            icon = f7Icon("folder"),
#            active = TRUE,
#  
#            f7Shadow(
#              intensity = 10,
#              hover = TRUE,
#              f7Card(
#                title = "Card header",
#                apexchartOutput("pie")
#              )
#            )
#          ),
#          f7Tab(
#            title = "Tab 2",
#            tabName = "Tab2",
#            icon = f7Icon("keyboard"),
#            active = FALSE,
#            f7Shadow(
#              intensity = 10,
#              hover = TRUE,
#              f7Card(
#                title = "Card header",
#                apexchartOutput("scatter")
#              )
#            )
#          ),
#          f7Tab(
#            title = "Tab 3",
#            tabName = "Tab3",
#            icon = f7Icon("layers_alt"),
#            active = FALSE,
#            f7Shadow(
#              intensity = 10,
#              hover = TRUE,
#              f7Card(
#                title = "Card header",
#                f7SmartSelect(
#                  "variable",
#                  "Variables to show:",
#                  c("Cylinders" = "cyl",
#                    "Transmission" = "am",
#                    "Gears" = "gear"),
#                  openIn = "sheet",
#                  multiple = TRUE
#                ),
#                tableOutput("data")
#              )
#            )
#          )
#        )
#      )
#    ),
#    server = function(input, output, session) {
#  
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
#      output$data <- renderTable({
#        mtcars[, c("mpg", input$variable), drop = FALSE]
#      }, rownames = TRUE)
#    }
#  )

## ----eval=FALSE---------------------------------------------------------------
#  f7SplitLayout(
#    ...,
#    navbar,
#    sidebar,
#    toolbar = NULL,
#    panels = NULL,
#    appbar = NULL
#  )

## ----eval=FALSE---------------------------------------------------------------
#  f7PanelMenu(
#    id = "menu",
#    f7PanelItem(
#      tabName = "tab1",
#      title = "Tab 1",
#      icon = f7Icon("email"),
#      active = TRUE
#    ),
#    f7PanelItem(
#      tabName = "tab2",
#      title = "Tab 2",
#      icon = f7Icon("home")
#    )
#  )

## ----eval=TRUE, echo=FALSE----------------------------------------------------
card(
  shinyMobile:::create_app_link(
    "NobwRAdghgtgpmAXGKAHVA6ASmANGAYwHsIAXOMpMAGwEsAjAJykYE8AKAZwAtaJWAlAB0IdJiw4BzSampFSAJmGiGzNl178AskXq1qcZWLUc0cAB4FuLcoyOqJ7UtzgwopWgWUiAZowCutKScAAQAPAC0IQAm7lAYfrBw7CIhIdDwIQC8IQTsAOQAgugGnPm4IfkA8swQknBlFfkAQlDQ0I2VzXCMjLQN+QK4qSEAblDU-nDZuewALHMVAKxLFQBsAOwVABwAzMreZC5uHgQA+jx8HD4kpDNCKP6kRA+HEHAA7mcwpAQsoZEQowGtZUMkRrFSFAZi4oNF2D8-oxOEMRrRouNGPcwDAiNE4NQHsMIGlMaw+JIZnROKR2HkHtFmKQiSEHh9mWABKiSSEPPBQjl6WBGe4WWyOdy0tFaMCCB4SNi5HUiSNRhgMg1seNJnAVTzGURUDMhTBUJIxYRWIS8KywNxUBbpTSLQBHThwAgW0acC2wC31FgWpH0V4iQ6XfjFVApHmBGY+DYABSg9RjaTSHlIBmxWlYITQDrwIzShvlEAFIWptOL6ecrmmOQeUH8jCIzD16fTsUYAGsZgAVLAAVQAosTO2kfPoDNEZgAxQoAGQAymOa2liHIsY2wABiAAM+42UB8Pg7E+e-isVNoNLTE4zaAAEkRqLOcoPR+OH7zn6-ogAIgSUB5jkGxLPu34PrQRCcP2RBXtwWC0CUDYhAuK4juuISShOMFwbUnCTAQFCkK0yLzkuq5Qem0CjPQLA3ne2FpPhADCpE9P2QTZh+w5rjyD68PiAByUCjFUEDJvUy4EK21DUAO-HYbhnbPK+DHbpWt7VoJE7CXAYkSVJKZwLJ8mKTkGGripNFpKg-gKfBWBwH4IKUZhNaqSECbLrIQSLiBCG6Q+nDonAmnxkmbQEveD6ZrxtrLuFmnnqF4WKq5HJ2bWxxoQ8dCSNw2UsT50XvNQWgUP4cU-ui2LwBA-hpT+CbJhVACS5AwLVP6-vQYmZDuUL0AAjC1fUJflYD9lA9AhONRZ6X1ngKjkCYdcQEApGAcAuv4ExnAQMoEAYrw5Q+UByrQoxoZ+WHLRO3kPm1MXUF1ri9T+I2DdNI0KBN308dNs3zQDS19Z2q0kutGybSQO17Qd1BHSdZ2cqVaTPROr2dd1X3xXNv3YiNuyA-FwPYqDIRkxDkOsVtUXw9tDxI4dx2MKduoY49nbKH12NpIEVRPA51ZgO6BhynA0RnCN52la5PgencO7ArdEwPLZ2F0ZFsNGZpBO8pTO5+XQdyBawwXkyE1gynQ7wedRpU8HCRAfEpo7a496nUHrZXwRpLBG6gsFBDBMO2vQ8jPDANsJoufA9uw1BzQS2KJxAfaLRU3DAj42LFaQqCcIgAD0ZcfFXGCSEQRCSAYGDEHHnIXWVmfJ6n9DpzuHchODuf54XpDF6XFdVx8Nd1w3cBN0QLf809OW7iEbh8LktykdhG3dZwRs759mP9cTw1zTnR8Js0TzPCzYDPNIBjLi4cDZbaiZyHcqAsEktg+q3F8bCfnAF+RsobvltDwYBpBz68wnF3Hub8P4hGTMweAv8badjbP0Mg7gI7YmjiPeeGD0ycA+ChOA8E2JyHdJ7AS9M0gMQID2A0Ro+JfiPpOQBdB8SMFAROB4ug-5twfA8ES-gYDdyxEQAugiejjDLKXYhnYYDrxyJBVeUBzAzFGoeSCHD0zaimDMCC+59GLwFsIkITB2CC3TLIeQIti5PB2k6Ug795ChlgbYg+PUj4-SSCTOaA8j5mEsNYRgpBHFix2swbsniLGlR8Xw-xQ1bSk2IQmeCD9wSwKhhAMWHVwEPHsaQC43B3ZKMrGnSySVyke3caQAA-JUqwHoewy1oUfWxaRQlWBsFE5xDwYCOQ8GcWJtBNY8wFipLyIxcLukYLdLSPh-AQGugjPgYsKjBS2SEd0nAwokAECEEAIgayyMWXAEct0yDsE2U8AAJPfGeQCX4VFOY9fwqBIRwDnIA5+tJ6o7kgS-Ra5iQgAF9DiYPoAs261zSJ3PyY8wR7zsK0ALkisWDzBHhBCCY45Hy+oJhEvIDFySLCqxCF-GkcB9w7X7C4PZ3CehjAmEY28IQSDUDzCye5pAcWwoqA8DAyCDBQHdPo+hIQ+ByTgBK6YQQFa5JlYzWGzMdrR2oKUqcCllX0ymtiQoBgInEKmshIqpB+yUpmMuVgnAMAAXcMkcFfNsIQprFCs5ekdmPNiYxQEwIIA8OKBYPpET2BEonKEo2kJoQ5HeF8RE-w26kFYGCbE-rGA2zcOgCkMwoAND4VonIuJ8TUEsaBNlOpLGSFbF8mYfJDAzL0l6iA5zRaPMlirGWcs5rhCiEGnhQ4OqRuwk+fsWhFzsBpeQelDxCgEBIgc3kTKCAtiDVmPM3bpazhGogW0FQaStjqFix5jV-BcnBW2jtTiBWuIaQOoEFAeENLHY9VxT7GAQDbD1flgqUTYV4HeVx17oXpl9QK4Z2raBjLhBMxSgaX09FDWEmw77oKYv-SUsp7tCWlRjXG+MAQgicAqGmjNat4MTHIiyXNqB805ELXvEt6QkgVCrYYwwrrIWevAx6iAAgwAQoALpAA", #nolint
    "app",
    header = FALSE
  ),
  full_screen = TRUE
)

## ----eval=FALSE---------------------------------------------------------------
#  library(shiny)
#  library(ggplot2)
#  library(shinyMobile)
#  library(apexcharter)
#  library(thematic)
#  
#  fruits <- data.frame(
#    name = c('Apples', 'Oranges', 'Bananas', 'Berries'),
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
#      title = "My app",
#      options = list(
#        theme = "aurora",
#        dark = TRUE,
#        filled = FALSE,
#        color = "#007aff",
#        touch = list(
#          tapHold = TRUE,
#          tapHoldDelay = 750,
#          iosTouchRipple = FALSE
#        ),
#        iosTranslucentBars = FALSE,
#        navbar = list(
#          iosCenterTitle = TRUE,
#          hideNavOnPageScroll = TRUE
#        ),
#        toolbar = list(
#          hideNavOnPageScroll = FALSE
#        ),
#        pullToRefresh = FALSE
#      ),
#      f7SplitLayout(
#        sidebar = f7Panel(
#          title = "Sidebar",
#          side = "left",
#          theme = "light",
#          f7PanelMenu(
#            id = "menu",
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
#          uiOutput("selected_tab"),
#          effect = "reveal"
#        ),
#        navbar = f7Navbar(
#          title = "Split Layout",
#          hairline = FALSE,
#          shadow = TRUE
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
#  
#      observeEvent(input$toggleSheet, {
#        updateF7Sheet(id = "sheet1")
#      })
#  
#      observeEvent(input$obs, {
#        if (input$obs < 500) {
#          f7Notif(
#            text = paste0("The slider value is only ", input$obs, ". Please
#                          increase it"),
#            icon = f7Icon("bolt_fill"),
#            title = "Alert",
#            titleRightText = Sys.Date()
#          )
#        }
#      })
#  
#      output$radar <- renderApexchart({
#        apex(
#          data = new_mtcars,
#          type = "radar",
#          mapping = aes(
#            x = model,
#            y = value,
#            group = time)
#        )
#      })
#  
#      output$selected_tab <- renderUI({
#        HTML(paste0("Access the currently selected tab: ", strong(input$menu)))
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
#  
#    }
#  )

## ----eval=FALSE---------------------------------------------------------------
#  options = list(
#      theme = c("ios", "md", "auto", "aurora"),
#      dark = TRUE,
#      filled = FALSE,
#      color = "#007aff",
#      touch = list(
#        tapHold = TRUE,
#        tapHoldDelay = 750,
#        iosTouchRipple = FALSE
#      ),
#      iosTranslucentBars = FALSE,
#      navbar = list(
#        iosCenterTitle = TRUE,
#        hideOnPageScroll = TRUE
#      ),
#      toolbar = list(
#        hideOnPageScroll = FALSE
#      ),
#      pullToRefresh = FALSE
#    )

## ----eval = FALSE-------------------------------------------------------------
#  library(shiny)
#  library(shinyMobile)
#  runGadget(shinyAppDir(system.file("examples/tab_layout", package = "shinyMobile")))

