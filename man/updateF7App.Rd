% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/update-app.R
\name{updateF7App}
\alias{updateF7App}
\title{Update Framework7 configuration}
\usage{
updateF7App(options, session = shiny::getDefaultReactiveDomain())
}
\arguments{
\item{options}{List of options.}

\item{session}{Shiny session object.}
}
\description{
\link{updateF7App} allows to update a shinyMobile app at run time by
injecting any configuration inside the current running instance. Useful it you want
to share the same behavior across multiple elements.
}
\note{
This function may be not work with all options and is intended
for advanced/expert usage.
}
\examples{
if (interactive()) {
 library(shiny)
 library(shinyMobile)
 shinyApp(
   ui = f7Page(
     title = "Simple Dialog",
     f7SingleLayout(
       navbar = f7Navbar(title = "f7Dialog"),
       f7Button(inputId = "goButton", "Go!"),
       f7Button(inputId = "update", "Update config")
     )
   ),
   server = function(input, output, session) {
     observeEvent(input$goButton,{
       f7Dialog(
         title = "Dialog title",
         text = "This is an alert dialog"
       )
     })

     observeEvent(input$update,{
       updateF7App(
        options = list(
         dialog = list(
          buttonOk =  "Yeaaaah!",
          buttonCancel = "Ouuups!"
         )
        )
       )

       f7Dialog(
         id = "test",
         title = "Warning",
         type = "confirm",
         text = "Look at me, I have a new buttons!"
       )
     })
   }
 )
}
}
