% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/is.inequality.R
\name{is.inequality}
\alias{is.inequality}
\title{Reports whether x is a 'inequality' object.}
\usage{
is.inequality(x)
}
\arguments{
\item{x}{an object to test.}
}
\value{
Returns TRUE if its argument is of class \code{inequality} and FALSE otherwise.
}
\description{
Reports whether x is a 'inequality' object.
}
\examples{
Pbox.BN <- subset(Pbox, Team=="Brooklyn Nets")
out <- inequality(Pbox.BN$PTS, npl=8)
is.inequality(out)
}
\references{
P. Zuccolotto and M. Manisera (2020) Basketball Data Science: With Applications in R. CRC Press.
}
\seealso{
\code{\link{inequality}}
}
\author{
Marco Sandri, Paola Zuccolotto, Marica Manisera (\email{basketball.analyzer.help@gmail.com})
}
