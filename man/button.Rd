% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/f7Button.R
\name{f7Button}
\alias{f7Button}
\alias{updateF7Button}
\title{Framework7 action button}
\usage{
f7Button(
  inputId = NULL,
  label = NULL,
  href = NULL,
  color = NULL,
  fill = TRUE,
  outline = FALSE,
  shadow = FALSE,
  rounded = FALSE,
  size = NULL,
  active = FALSE
)

updateF7Button(
  inputId,
  label = NULL,
  color = NULL,
  fill = NULL,
  outline = NULL,
  shadow = NULL,
  rounded = NULL,
  size = NULL,
  session = shiny::getDefaultReactiveDomain()
)
}
\arguments{
\item{inputId}{The input slot that will be used to access the value.}

\item{label}{The contents of the button or link–usually a text label,
but you could also use any other HTML, like an image or \link{f7Icon}.}

\item{href}{Button link.}

\item{color}{Button color. Not compatible with outline.
See here for valid colors \url{https://framework7.io/docs/badge.html}.}

\item{fill}{Fill style. TRUE by default. Not compatible with outline}

\item{outline}{Outline style. FALSE by default. Not compatible with fill.}

\item{shadow}{Button shadow. FALSE by default. Only for material design.}

\item{rounded}{Round style. FALSE by default.}

\item{size}{Button size. NULL by default but also "large" or "small".}

\item{active}{Button active state. Default to FALSE. This is useful when
used in \link{f7Segment} with the strong parameter set to TRUE.}

\item{session}{The Shiny session object, usually the default value will suffice.}
}
\description{
\link{f7Button} generates a Framework7 action button.

\link{updateF7Button} updates a \link{f7Button}.
}
\examples{
if (interactive()) {
 library(shiny)
 library(shinyMobile)

 shiny::shinyApp(
  ui = f7Page(
    title = "Update f7Button",
    f7SingleLayout(
      navbar = f7Navbar(title = "Update f7Button"),
      f7Button(
        "test",
        "Test",
        color = "orange",
        outline = FALSE,
        fill = TRUE,
        shadow = FALSE,
        rounded = FALSE,
        size = NULL),
      f7Toggle("prout", "Update Button")
    )
  ),
  server = function(input, output, session) {
    observe(print(input$test))
    observeEvent(input$prout, {
      if (input$prout) {
        updateF7Button(
          inputId = "test",
          label = "Updated",
          color = "purple",
          shadow = TRUE,
          rounded = TRUE,
          size = "large"
        )
      }
    })
  }
 )
}
}
\author{
David Granjon, \email{dgranjon@ymail.com}
}
