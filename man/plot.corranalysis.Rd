% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot.corranalysis.R
\name{plot.corranalysis}
\alias{plot.corranalysis}
\title{Plots the correlation matrix and the correlation network from a 'corranalysis' object}
\usage{
\method{plot}{corranalysis}(x, horizontal = TRUE, title = NULL, ...)
}
\arguments{
\item{x}{an object of class \code{corranalysis}.}

\item{horizontal}{logical; if TRUE, the two plots are arranged horizontally.}

\item{title}{character, plot title.}

\item{...}{other graphical parameters}
}
\value{
A \code{ggplot2} object
}
\description{
Plots the correlation matrix and the correlation network from a 'corranalysis' object
}
\examples{
data <- data.frame(Pbox$PTS,Pbox$P3M,Pbox$P2M,
                   Pbox$OREB + Pbox$DREB,Pbox$AST,
                   Pbox$TOV,Pbox$STL,Pbox$BLK)/Pbox$MIN
names(data) <- c("PTS","P3M","P2M","REB","AST","TOV","STL","BLK")
data <- subset(data, Pbox$MIN >= 500)
out <- corranalysis(data, threshold=0.5)
plot(out)
}
\references{
P. Zuccolotto and M. Manisera (2020) Basketball Data Science: With Applications in R. CRC Press.
}
\seealso{
\code{\link{corranalysis}}
}
\author{
Marco Sandri, Paola Zuccolotto, Marica Manisera (\email{basketballanalyzer.help@unibs.it})
}
