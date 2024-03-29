% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/f7List.R
\name{f7ListIndex}
\alias{f7ListIndex}
\title{Create a Framework 7 list index}
\usage{
f7ListIndex(id, target, ..., session = shiny::getDefaultReactiveDomain())
}
\arguments{
\item{id}{Unique id.}

\item{target}{Related list element. CSS selector like .class, #id, ...}

\item{...}{Other options (see \url{https://v5.framework7.io/docs/list-index#list-index-parameters}).}

\item{session}{Shiny session object.}
}
\description{
List index must be attached to an existing list view.
}
\note{
For some reason, unable to get more than 1 list index working. See
example below. The second list does not work.
}
\examples{
if (interactive()) {
 library(shiny)
 library(shinyMobile)
 shinyApp(
   ui = f7Page(
     title = "List Index",
     f7TabLayout(
       navbar = f7Navbar(
         title = "f7ListIndex",
         hairline = FALSE,
         shadow = TRUE
       ),
       f7Tabs(
         f7Tab(
           tabName = "List1",
           f7List(
            mode = "contacts",
            lapply(1:26, function(i) {
              f7ListGroup(
                title = LETTERS[i],
                lapply(1:26, function(j) f7ListItem(letters[j]))
              )
            })
           )
         ),
         f7Tab(
           tabName = "List2",
           f7List(
            mode = "contacts",
            lapply(1:26, function(i) {
              f7ListGroup(
                title = LETTERS[i],
                lapply(1:26, function(j) f7ListItem(letters[j]))
              )
            })
           )
         )
       )
     )
   ),
   server = function(input, output, session) {
    observeEvent(TRUE, {
     f7ListIndex(id = "list-index-1", target = ".list")
    }, once = TRUE)
   }
 )
}
}
