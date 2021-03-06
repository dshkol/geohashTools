\name{gh_encode}
\alias{gh_encode}

\title{
  Geohash encoding
}
\description{
  Convert latitude/longitude coordinates into geohash-encoded strings
}
\usage{
gh_encode(latitude, longitude, precision = 6L)
}
\arguments{
  \item{latitude}{ \code{numeric} vector of input latitude (y) coordinates. Must be in \code{[-90, 90)}. }
  \item{longitude}{ \code{numeric} vector of input longitude (x) coordinates. Should be in \code{[-180, 180)}. }
  \item{precision}{ Positive \code{integer} scalar controlling the 'zoom level' -- how many characters should be used in the output. }
}
\details{
  \code{precision} is limited to at most 28. This level of precision encodes locations on the globe at a nanometer scale and is already more than enough for basically all applications.

  Longitudes outside \code{[-180, 180)} will be wrapped appropriately to the standard longitude grid.
}
\value{
  \code{character} vector of geohashes corresponding to the input. \code{NA} in gives \code{NA} out.
}
\references{
  \url{http://geohash.org/} ( Gustavo Niemeyer's original geohash service )
}
\author{
  Michael Chirico
}

\examples{
# scalar input is treated as a vector
gh_encode(2.345, 6.789)

# geohashes are left-closed, right-open, so boundary coordinates are
#   associated to the east and/or north
gh_encode(0, 0)
}
