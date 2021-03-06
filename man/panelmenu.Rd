% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/f7Panel.R
\name{f7PanelMenu}
\alias{f7PanelMenu}
\alias{f7PanelItem}
\title{Framework7 sidebar menu}
\usage{
f7PanelMenu(..., id = NULL)

f7PanelItem(title, tabName, icon = NULL, active = FALSE)
}
\arguments{
\item{...}{Slot for \link{f7PanelItem}.}

\item{id}{Unique id to access the currently selected item.}

\item{title}{Item name.}

\item{tabName}{Item unique tabName. Must correspond to what is passed to
\link{f7Item}.}

\item{icon}{Item icon.}

\item{active}{Whether the item is active at start. Default to FALSE.}
}
\description{
\link{f7PanelMenu} creates a menu for \link{f7Panel}. It may contain
multiple \link{f7PanelItem}.

\link{f7PanelItem} creates a Framework7 sidebar menu item for \link{f7SplitLayout}.
}
\author{
David Granjon, \email{dgranjon@ymail.com}
}
