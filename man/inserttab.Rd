% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/f7-tabs.R
\name{insertF7Tab}
\alias{insertF7Tab}
\title{Framework7 tab insertion}
\usage{
insertF7Tab(
  id,
  tab,
  target = NULL,
  position = c("before", "after"),
  select = FALSE,
  session = shiny::getDefaultReactiveDomain()
)
}
\arguments{
\item{id}{\link{f7Tabs} id.}

\item{tab}{\link{f7Tab} to insert.}

\item{target}{\link{f7Tab} after of before which the new tab will be inserted.}

\item{position}{Insert before or after: \code{c("before", "after")}.}

\item{select}{Whether to select the newly inserted tab. FALSE by default.}

\item{session}{Shiny session object.}
}
\description{
\code{insertF7Tab} inserts an \link{f7Tab} in an \link{f7Tabs}.
}
\seealso{
\link{f7Tabs}
}
