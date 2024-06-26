% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/f7Gauge.R
\name{f7Gauge}
\alias{f7Gauge}
\alias{updateF7Gauge}
\title{Framework7 gauge}
\usage{
f7Gauge(
  id,
  type = "circle",
  value,
  size = 200,
  bgColor = "transparent",
  borderBgColor = "#eeeeee",
  borderColor = "#000000",
  borderWidth = "10",
  valueText = NULL,
  valueTextColor = "#000000",
  valueFontSize = "31",
  valueFontWeight = "500",
  labelText = NULL,
  labelTextColor = "#888888",
  labelFontSize = "14",
  labelFontWeight = "400"
)

updateF7Gauge(
  id,
  value = NULL,
  labelText = NULL,
  size = NULL,
  bgColor = NULL,
  borderBgColor = NULL,
  borderColor = NULL,
  borderWidth = NULL,
  valueText = NULL,
  valueTextColor = NULL,
  valueFontSize = NULL,
  valueFontWeight = NULL,
  labelTextColor = NULL,
  labelFontSize = NULL,
  labelFontWeight = NULL,
  session = shiny::getDefaultReactiveDomain()
)
}
\arguments{
\item{id}{Gauge ID.}

\item{type}{Gauge type. Can be "circle" or "semicircle". Default is "circle."}

\item{value}{Gauge value/percentage. Must be a number between 0 and 100.}

\item{size}{Generated SVG image size (in px). Default is 200.}

\item{bgColor}{Gauge background color. Can be any valid color string,
e.g. #ff00ff, rgb(0,0,255), etc. Default is "transparent".}

\item{borderBgColor}{Main border/stroke background color.}

\item{borderColor}{Main border/stroke color.}

\item{borderWidth}{Main border/stroke width.}

\item{valueText}{Gauge value text (large text in the center of gauge).}

\item{valueTextColor}{Value text color.}

\item{valueFontSize}{Value text font size.}

\item{valueFontWeight}{Value text font weight.}

\item{labelText}{Gauge additional label text.}

\item{labelTextColor}{Label text color.}

\item{labelFontSize}{Label text font size.}

\item{labelFontWeight}{Label text font weight.}

\item{session}{Shiny session object.}
}
\description{
\code{f7Gauge} creates a gauge instance.

\code{updateF7Gauge} updates a framework7 gauge from the server side.
}
\examples{
library(shiny)
library(shinyMobile)

app <- shinyApp(
  ui = f7Page(
    title = "Gauges",
    f7SingleLayout(
      navbar = f7Navbar(title = "f7Gauge"),
      f7Block(
        f7Gauge(
          id = "mygauge",
          type = "semicircle",
          value = 50,
          borderColor = "#2196f3",
          borderWidth = 10,
          valueFontSize = 41,
          valueTextColor = "#2196f3",
          labelText = "amount of something"
        )
      ),
      f7Block(f7Button("update", "Update Gauge"))
    )
  ),
  server = function(input, output, session) {
    observeEvent(input$update, {
      updateF7Gauge(id = "mygauge", value = 75, labelText = "New label!")
    })
  }
)

if (interactive() || identical(Sys.getenv("TESTTHAT"), "true")) app
}
\author{
David Granjon \email{dgranjon@ymail.com}
}
