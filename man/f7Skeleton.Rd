% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/f7Skeleton.R
\name{f7Skeleton}
\alias{f7Skeleton}
\title{Framework 7 skeleton effect}
\usage{
f7Skeleton(tag, effect = "fade", duration = 2)
}
\arguments{
\item{tag}{Tag to be modified.}

\item{effect}{Choose between "fade", "blink" or "pulse".}

\item{duration}{Effect duration: 2s by default.}
}
\description{
Nice loading overlay for UI elements.
}
\examples{
if (interactive()) {
 library(shiny)
 library(shinyMobile)

 shinyApp(
   ui = f7Page(
     title = "Skeletons",
     f7SingleLayout(
       navbar = f7Navbar(title = "f7Skeleton"),
       f7Card(
         title = "Card header",
         "This is a simple card with plain text,
      but cards can also contain their own header,
      footer, list view, image, or any other element.",
         footer = tagList(
           f7Button(color = "blue", label = "My button", href = "https://www.google.com"),
           f7Badge("Badge", color = "green")
         )
       ) \%>\% f7Skeleton(),

        f7List(
         f7ListItem(
           href = "https://www.google.com",
           title = "Item 1"
         ) \%>\% f7Skeleton(effect = "pulse", duration = 5) ,
         f7ListItem(
           href = "https://www.google.com",
           title = "Item 2"
         ) \%>\% f7Skeleton(effect = "pulse", duration = 5)
        )
     )
   ),
   server = function(input, output) {}
 )
}
}
