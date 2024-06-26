% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/f7Searchbar.R
\name{f7Searchbar}
\alias{f7Searchbar}
\alias{f7SearchbarTrigger}
\alias{f7HideOnSearch}
\alias{f7HideOnEnable}
\alias{f7NotFound}
\alias{f7Found}
\alias{f7SearchIgnore}
\title{Framework 7 searchbar}
\usage{
f7Searchbar(
  id,
  placeholder = "Search",
  expandable = FALSE,
  inline = FALSE,
  options = NULL
)

f7SearchbarTrigger(targetId)

f7HideOnSearch(tag)

f7HideOnEnable(tag)

f7NotFound(tag)

f7Found(tag)

f7SearchIgnore(tag)
}
\arguments{
\item{id}{Necessary when using \link{f7SearchbarTrigger}. NULL otherwise.}

\item{placeholder}{Searchbar placeholder.}

\item{expandable}{Whether to enable the searchbar with a target link,
in the navbar. See \link{f7SearchbarTrigger}.}

\item{inline}{Useful to add an \link{f7Searchbar} in a navbar.
Notice that utilities like \link{f7HideOnSearch} and \link{f7NotFound} are not
compatible with this mode.}

\item{options}{Search bar options.
See \url{https://framework7.io/docs/searchbar.html#searchbar-parameters}.
If no options are provided, the searchbar will search in list elements by
item title. This may be changed by updating the default searchContainer and
searchIn.}

\item{targetId}{Id of the \link{f7Searchbar}.}

\item{tag}{tag to ignore.}
}
\description{
Searchbar to filter elements in a page.

\link{f7SearchbarTrigger}: Element that
triggers the searchbar.

\link{f7HideOnSearch}: elements with such class
on page will be hidden during search

\link{f7HideOnEnable}: elements with such class
on page will be hidden when searchbar is enabled

\link{f7NotFound}: elements with such
class are hidden by default and become visible
when there is not any search results

\link{f7Found}: elements with such
class are visible by default and become hidden
when there is not any search results.

\link{f7SearchIgnore}: searchbar will not
consider this elements in search results.
}
\examples{
library(shiny)
library(shinyMobile)

cities <- names(precip)

app <- shinyApp(
  ui = f7Page(
    title = "Expandable searchbar",
    f7SingleLayout(
      navbar = f7Navbar(
        title = "f7Searchbar with trigger",
        subNavbar = f7SubNavbar(
          f7Searchbar(id = "search1", expandable = TRUE)
        )
      ),
      f7Block(
        f7SearchbarTrigger(targetId = "search1")
      ) \%>\% f7HideOnSearch(),
      f7List(
        lapply(seq_along(cities), function(i) {
          f7ListItem(cities[i])
        })
      ) \%>\% f7Found(),
      f7Block(
        p("Nothing found")
      ) \%>\% f7NotFound()
    )
  ),
  server = function(input, output) {}
)

if (interactive() || identical(Sys.getenv("TESTTHAT"), "true")) app
}
