#' Framework7 badge
#'
#' Container to highlight important information with color.
#'
#' @param ... Badge content. Avoid long text.
#' @param color Badge color: see here for valid colors \url{https://framework7.io/docs/badge.html}.
#'
#' @examples
#' if (interactive()) {
#'   library(shiny)
#'   library(shinyMobile)
#'
#'   colors <- getF7Colors()
#'
#'   shinyApp(
#'     ui = f7Page(
#'       title = "Badges",
#'       f7SingleLayout(
#'         navbar = f7Navbar(title = "f7Badge"),
#'         f7Block(
#'           strong = TRUE,
#'           f7Badge("Default"),
#'           lapply(seq_along(colors), function(i) {
#'             f7Badge(colors[[i]], color = colors[[i]])
#'           })
#'         )
#'       )
#'     ),
#'     server = function(input, output) {}
#'   )
#' }
#'
#' @author David Granjon, \email{dgranjon@@ymail.com}
#'
#' @export
f7Badge <- function(..., color = NULL) {
  if (!is.null(color)) validateF7Color(color)

  badgeCl <- "badge"
  if (!is.null(color)) badgeCl <- paste0(badgeCl, " color-", color)
  shiny::tags$span(class = badgeCl, ...)
}
