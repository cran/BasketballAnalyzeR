% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/is.simplereg.R
\name{is.simplereg}
\alias{is.simplereg}
\title{Reports whether x is a 'simplereg' object}
\usage{
is.simplereg(x)
}
\arguments{
\item{x}{an object to test.}
}
\value{
Returns TRUE if its argument is of class \code{simplereg} and FALSE otherwise.
}
\description{
Reports whether x is a 'simplereg' object
}
\examples{
Pbox.sel <- subset(Pbox, MIN >= 500)
X <- Pbox.sel$AST/Pbox.sel$MIN
Y <- Pbox.sel$TOV/Pbox.sel$MIN
Pl <- Pbox.sel$Player
out <- simplereg(x=X, y=Y, type="lin")
is.simplereg(out)
}
\references{
P. Zuccolotto and M. Manisera (2020) Basketball Data Science: With Applications in R. CRC Press.
}
\seealso{
\code{\link{simplereg}}
}
\author{
Marco Sandri, Paola Zuccolotto, Marica Manisera (\email{basketballanalyzer.help@unibs.it})
}
