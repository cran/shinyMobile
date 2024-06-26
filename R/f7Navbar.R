#' Framework7 Navbar
#'
#' Build a navbar layout element to insert in \link{f7SingleLayout},
#' \link{f7TabLayout} or \link{f7SplitLayout}.
#'
#' @param ... Slot for \link{f7SearchbarTrigger}. Not compatible with \link{f7Panel}.
#' @param subNavbar \link{f7SubNavbar} slot, if any.
#' @param title Navbar title.
#' @param subtitle `r lifecycle::badge("deprecated")`:
#' removed from Framework7.
#' @param hairline Whether to display a thin border on the top of the navbar. TRUE by default,
#' for ios.
#' @param shadow `r lifecycle::badge("deprecated")`:
#' removed from Framework7.
#' @param bigger Whether to display bigger title. FALSE by default. Title
#' becomes smaller when scrolling down the page.
#' @param transparent Whether the navbar should be transparent. FALSE by default.
#' Only works if bigger is TRUE.
#' @param leftPanel Whether to enable the left panel. FALSE by default.
#' You can also pass a list of shiny tag with \code{shiny::tagList}, such as an icon or text. This is useful
#' when using the yet experimental routable API with \link{f7MultiLayout}.
#' @param rightPanel Whether to enable the right panel. FALSE by default.
#' You can also pass a list of shiny tags with \code{shiny::tagList}, such as an icon or text. This is useful
#' when using the yet experimental routable API with \link{f7MultiLayout}.
#'
#' @note Currently, bigger parameters does mess with the CSS.
#'
#' @author David Granjon, \email{dgranjon@@ymail.com}
#'
#' @rdname navbar
#' @example inst/examples/navbar/app.R
#'
#' @export
#' @importFrom lifecycle deprecated
f7Navbar <- function(..., subNavbar = NULL, title = NULL, subtitle = deprecated(), hairline = TRUE,
                     shadow = deprecated(), bigger = FALSE, transparent = FALSE, leftPanel = FALSE,
                     rightPanel = FALSE) {
  if (lifecycle::is_present(subtitle)) {
    lifecycle::deprecate_warn(
      when = "2.0.0",
      what = "f7Navbar(subtitle)",
      details = "subtitle has been
      removed from Framework7 and will be removed from shinyMobile
      in the next release."
    )
  }

  if (lifecycle::is_present(shadow)) {
    lifecycle::deprecate_warn(
      when = "2.0.0",
      what = "f7Navbar(shadow)",
      details = "shadow has been
      removed from Framework7 and will be removed from shinyMobile
      in the next release."
    )
  }

  navbarClass <- "navbar"
  if (transparent) navbarClass <- sprintf("%s navbar-transparent", navbarClass)
  # bigger and transparent work together
  if (bigger) navbarClass <- paste(navbarClass, "navbar-large")
  if (!hairline) navbarClass <- paste(navbarClass, "no-outline")

  leftNav <- if (!inherits(leftPanel, "shiny.tag.list")) {
    if (leftPanel) {
      shiny::tags$div(
        class = "left",
        shiny::tags$a(
          class = "link icon-only panel-open",
          `data-panel` = "left",
          f7Icon("bars")
        )
      )
    }
  } else {
    shiny::tags$div(
      class = "left",
      leftPanel
    )
  }

  rightNav <- if (!inherits(rightPanel, "shiny.tag.list")) {
    if (rightPanel) {
      shiny::tags$div(
        class = "right",
        shiny::tags$a(
          class = "link icon-only panel-open",
          `data-panel` = "right",
          f7Icon("bars")
        )
      )
    }
  } else {
    shiny::tags$div(
      class = "right",
      rightPanel
    )
  }

  innerCl <- "navbar-inner sliding"

  shiny::tags$div(
    class = navbarClass,
    shiny::tags$div(class = "navbar-bg"),
    shiny::tags$div(
      class = innerCl,
      leftNav,
      if (bigger) {
        shiny::tagList(
          shiny::tags$div(
            class = "title",
            title
          ),
          rightNav,
          shiny::tags$div(
            class = "title-large",
            shiny::tags$div(class = "title-large-text", title)
          )
        )
      } else {
        shiny::tagList(
          shiny::tags$div(
            class = "title",
            title,
          ),
          rightNav
        )
      },
      ...,
      subNavbar
    )
  )
}

#' Toggle a Framework7 navbar
#'
#' \code{updateF7Navbar} toggles an \link{f7Navbar} component from the server.
#'
#' @param animate Whether it should be hidden with animation or not. By default is TRUE.
#' @param hideStatusbar  When FALSE (default) it hides navbar partially keeping space
#' required to cover statusbar area. Otherwise, navbar will be fully hidden.
#' @param session Shiny session object.
#' @rdname navbar
#'
#' @export
updateF7Navbar <- function(animate = TRUE, hideStatusbar = FALSE, session = shiny::getDefaultReactiveDomain()) {
  message <- jsonlite::toJSON(
    list(
      animate = animate,
      hideStatusbar = hideStatusbar
    )
  )
  session$sendCustomMessage(type = "toggle-navbar", message = message)
}

#' Framework7 sub navbar
#'
#' \code{f7SubNavbar} creates a nested navbar component for
#' \link{f7Navbar}.
#'
#' @param ... Any elements.
#'
#' @example inst/examples/navbar/app.R
#'
#' @export
f7SubNavbar <- function(...) {
  shiny::tags$div(
    class = "subnavbar",
    shiny::tags$div(
      class = "subnavbar-inner",
      shiny::tags$div(
        class = "segmented",
        ...
      )
    )
  )
}
