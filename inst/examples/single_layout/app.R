library(shiny)
library(shinyMobile)
library(apexcharter)
library(dplyr)
library(ggplot2)

data("economics_long")
economics_long <- economics_long %>%
  group_by(variable) %>%
  slice((n() - 100):n())


shinyApp(
  ui = f7Page(
    title = "Single layout",
    f7SingleLayout(
      navbar = f7Navbar(
        title = "Single Layout",
        hairline = TRUE
      ),
      toolbar = f7Toolbar(
        position = "bottom",
        f7Link(label = "Link 1", href = "https://www.google.com"),
        f7Link(label = "Link 2", href = "https://www.google.com")
      ),
      # main content
      f7Card(
        title = "Card header",
        apexchartOutput("areaChart")
      )
    )
  ),
  server = function(input, output) {
    output$areaChart <- renderApexchart({
      apex(
        data = economics_long,
        type = "area",
        mapping = aes(
          x = date,
          y = value01,
          fill = variable
        )
      ) %>%
        ax_yaxis(decimalsInFloat = 2) %>% # number of decimals to keep
        ax_chart(stacked = TRUE) %>%
        ax_yaxis(max = 4, tickAmount = 4)
    })
  }
)
