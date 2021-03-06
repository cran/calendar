% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ic_dataframe.R
\name{ic_dataframe}
\alias{ic_dataframe}
\title{Convert iCal lines of text into a data frame}
\usage{
ic_dataframe(x)
}
\arguments{
\item{x}{Lines read-in in from an iCal file}
}
\description{
Returns a data frame
}
\examples{
ic_dataframe(ical_example)
ic_dataframe(ical_outlook)
ics_file <- system.file("extdata", "england-and-wales.ics", package = "calendar")
x = readLines(ics_file)
x_df = ic_dataframe(x)
head(x_df)
x = data.frame(x_df)
x_df2 = ic_dataframe(x)
identical(x, x_df2)
}
