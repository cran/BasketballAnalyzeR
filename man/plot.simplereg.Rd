% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot.simplereg.R
\name{plot.simplereg}
\alias{plot.simplereg}
\title{Plot simple regression from a 'simplereg' object}
\usage{
\method{plot}{simplereg}(
  x,
  labels = NULL,
  subset = NULL,
  Lx = 0.01,
  Ux = 0.99,
  Ly = 0.01,
  Uy = 0.99,
  title = "Simple regression",
  xtitle = NULL,
  ytitle = NULL,
  repel = TRUE,
  ...
)
}
\arguments{
\item{x}{an object of class \code{simplereg}.}

\item{labels}{character, labels for subjects.}

\item{subset}{an optional vector specifying a subset of observations to be highlighted in the graph or \code{subset='quant'} to highligh observations with coordinates above and below the upper and lower quantiles of the variables on the x- and y-axis (\code{Lx}, \code{Ux}, \code{Ly}, \code{Uy}).}

\item{Lx}{numeric; if \code{subset='quant'}, lower quantile for the variable on the x-axis (default = 0.01).}

\item{Ux}{numeric; if \code{subset='quant'}, upper quantile for the variable on the x-axis (default = 0.99).}

\item{Ly}{numeric; if \code{subset='quant'}, lower quantile for the variable on the y-axis (default = 0.01).}

\item{Uy}{numeric; if \code{subset='quant'}, upper quantile for the variable on the y-axis (default = 0.99).}

\item{title}{character, plot title.}

\item{xtitle}{character, x-axis label.}

\item{ytitle}{character, y-axis label.}

\item{repel}{logical, if \code{TRUE} (the default) text labels repel away from each other.}

\item{...}{other graphical parameters.}
}
\value{
A \code{ggplot2} object
}
\description{
Plot simple regression from a 'simplereg' object
}
\examples{
Pbox.sel <- subset(Pbox, MIN >= 500)
X <- Pbox.sel$AST/Pbox.sel$MIN
Y <- Pbox.sel$TOV/Pbox.sel$MIN
Pl <- Pbox.sel$Player
mod <- simplereg(x=X, y=Y, type="lin")
plot(mod)
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
