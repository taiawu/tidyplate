% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plate_handlers.R
\name{dimensions_to_wells}
\alias{dimensions_to_wells}
\title{Create well names from plate dimensions}
\usage{
dimensions_to_wells(plate_rows, plate_cols, .leading_zeroes = FALSE)
}
\arguments{
\item{plate_rows}{A vector where each element is a plate row to be included in the output well names, e.g. c("A", "B").}

\item{plate_cols}{A vector where each element is a plate column to be included in the output well names, e.g. c(1, 2).}

\item{.leading_zeroes}{Whether to add leading zeroes to numeric \code{plate_cols} in the final well names (e.g. "A01").}
}
\value{
A character vector where each entry is a unique well name generated by combining the plate rows and columns , e.g. c("A1", "A2", "B1", "B2").
}
\description{
Creates well names from all possible combinations of input plate rows and columns.
}
\examples{

dimensions_to_wells(plate_rows = c("A", "B"), plate_cols = c(8:10))
# [1] "A8"  "B8"  "A9"  "B9"  "A10" "B10"

# leading zeroes can be added to well names
dimensions_to_wells(plate_rows = c("A", "B"), plate_cols = c(8:10), .leading_zeroes = TRUE)
# [1] "A08" "B08" "A09" "B09" "A10" "B10"

}
