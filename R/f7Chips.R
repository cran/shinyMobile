#' Framework7 chips
#'
#' \code{f7Chip} is an improved badge container.
#'
#' @param label Chip label.
#' @param image Chip image, if any.
#' @param icon Icon, if any. IOS and Material icons available.
#' @param outline Whether to outline chip. FALSE by default.
#' @param status Chip color: see here for valid colors \url{https://framework7.io/docs/chips.html}.
#' @param iconStatus Chip icon color: see here for valid colors \url{https://framework7.io/docs/chips.html}.
#' @param closable Whether to close the chip. FALSE by default.
#'
#' @examples
#' if(interactive()){
#'  library(shiny)
#'  library(shinyMobile)
#'
#'  shinyApp(
#'   ui = f7Page(
#'     title = "Chips",
#'     f7SingleLayout(
#'       navbar = f7Navbar(title = "f7Chip"),
#'       f7Block(
#'         strong = TRUE,
#'         f7Chip(label = "simple Chip"),
#'         f7Chip(label = "outline Chip", outline = TRUE),
#'         f7Chip(label = "icon Chip", icon = f7Icon("plus_circle_fill"), iconStatus = "pink"),
#'         f7Chip(label = "image Chip", image = "https://loremflickr.com/g/320/240/london"),
#'         f7Chip(label = "closable Chip", closable = TRUE),
#'         f7Chip(label = "colored Chip", status = "green"),
#'         f7Chip(label = "colored outline Chip", status = "green", outline = TRUE)
#'       )
#'     )
#'   ),
#'   server = function(input, output) {}
#'  )
#' }
#'
#' @author David Granjon, \email{dgranjon@@ymail.com}
#'
#' @export
f7Chip <- function(label = NULL, image = NULL, icon = NULL, outline = FALSE,
                   status = NULL, iconStatus = NULL, closable = FALSE) {

  chipCl <- "chip"
  if (outline) chipCl <- paste0(chipCl, " chip-outline")
  if (!is.null(status)) chipCl <- paste0(chipCl, " color-", status)

  iconTag <- if (!is.null(icon)) {
    shiny::tags$div(
      class = if (!is.null(iconStatus)) {
        paste0("chip-media bg-color-", iconStatus)
      } else {
        "chip-media"
      },
      icon
    )
  }

  imageTag <- if (!is.null(image)) {
    shiny::tags$div(
      class = "chip-media",
      shiny::img(src = image)
    )
  }

  shiny::tags$div(
    class = chipCl,
    if (!is.null(image)) imageTag,
    if (!is.null(icon)) iconTag,
    shiny::tags$div(
      class = "chip-label",
      label
    ),
    if (closable) shiny::a(href = "#", class = "chip-delete")
  )
}
