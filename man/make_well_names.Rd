% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plate_handlers.R
\name{make_well_names}
\alias{make_well_names}
\title{Generate well names for a given plate}
\usage{
make_well_names(
  plate_type,
  plate_rows = NULL,
  plate_cols = NULL,
  .leading_zeroes = FALSE,
  .as_factor = FALSE,
  ...
)
}
\arguments{
\item{plate_type}{The type of plate to make well names for; can be
\itemize{
\item \code{96}, for 96 well plates.
\item \code{384}, for 384 well plates.
\item "custom", for a plate containing user-specified rows and columns to \code{plate_rows} and \code{plate_cols}, which are passed to \code{\link[=dimensions_to_wells]{dimensions_to_wells()}}.
}}

\item{plate_rows}{A vector where each element is a plate row to be included in the output well names, e.g. c("A", "B").}

\item{plate_cols}{A vector where each element is a plate column to be included in the output well names, e.g. c(1, 2).}

\item{.leading_zeroes}{Whether to add leading zeroes to numeric \code{plate_cols} in the final well names (e.g. "A01").}

\item{.as_factor}{Whether to make the output vector a factor, with the same levels as the order of the vector.}

\item{...}{Unused, for extensibility.}
}
\value{
A character vector where each entry is a unique well name. This vector is a factor if \code{.as_factor} is set to \code{TRUE}.
}
\description{
Given either a plate type (e.g. \code{96}, \code{384}, or \code{"custom"}), generate a vector containing the names of all wells in that plate.
}
\examples{

# generate well names for a full 384-well plate
make_well_names(plate_type = 384)
# [1] "A1"  "A2"  "A3" . . . "P22" "P23" "P24"

# generate well names for a custom plate
make_well_names(plate_type = "custom", plate_rows = c("AA", "BB", "CC"), plate_cols = c(1, 2, 3))
# [1] "AA1" "AA2" "AA3" "BB1" "BB2" "BB3" "CC1" "CC2" "CC3"

}
