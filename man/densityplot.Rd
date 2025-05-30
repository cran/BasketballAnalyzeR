% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/densityplot.r
\name{densityplot}
\alias{densityplot}
\title{Computes and plots kernel density estimation of shots with respect to a concurrent variable}
\usage{
densityplot(
  data,
  var,
  shot.type = "field",
  thresholds = NULL,
  best.scorer = FALSE,
  period.length = 12,
  bw = NULL,
  title = NULL
)
}
\arguments{
\item{data}{a data frame whose rows are shots and with the following columns: \code{ShotType}, \code{player}, \code{points} and at least one of \code{playlength}, \code{periodTime}, \code{totalTime}, \code{shot_distance} (the column specified in \code{var}, see Details).}

\item{var}{character, a string giving the name of the numerical variable according to which the shot density is estimated. Available options: \code{"playlength"}, \code{"periodTime"}, \code{"totalTime"}, \code{"shot_distance"}.}

\item{shot.type}{character, a string giving the type of shots to be analyzed. Available options: \code{"2P"}, \code{"3P"}, \code{"FT"}, \code{"field"}.}

\item{thresholds}{numerical vector with two thresholds defining the range boundaries that divide the area under the density curve into three regions. If \code{NULL} default values are used.}

\item{best.scorer}{logical; if TRUE, displays the player who scored the highest number of points in the corresponding interval.}

\item{period.length}{numeric, the length of a quarter in minutes (default: 12 minutes as in NBA).}

\item{bw}{numeric, the value for the smoothing bandwidth of the kernel density estimator or a character string giving a rule to choose the bandwidth (see \link[stats]{density}).}

\item{title}{character, plot title.}
}
\value{
A \code{ggplot2} plot
}
\description{
Computes and plots kernel density estimation of shots with respect to a concurrent variable
}
\details{
The \code{data} data frame could also be a play-by-play dataset provided that rows corresponding to events different from shots have \code{NA} in the \code{ShotType} variable.

Required columns:

\itemize{
\item \code{ShotType}, a factor with the following levels: \code{"2P"}, \code{"3P"}, \code{"FT"} (and \code{NA} for events different from shots)
}

\itemize{
\item \code{player}, a factor with the name of the player who made the shot
}

\itemize{
\item \code{points}, a numeric variable (integer) with the points scored by made shots and \code{0} for missed shots
}

\itemize{
\item \code{playlength}, a numeric variable with time between the shot and the immediately preceding event
}

\itemize{
\item \code{periodTime}, a numeric variable with seconds played in the quarter when the shot is attempted
}

\itemize{
\item \code{totalTime}, a numeric variable with seconds played in the whole match when the shot is attempted
}

\itemize{
\item \code{shot_distance}, a numeric variable with the distance of the shooting player from the basket (in feet)
}
}
\examples{
PbP <- PbPmanipulation(PbP.BDB)
data.team  <- subset(PbP, team=="GSW" & result!="")
densityplot(data=data.team, shot.type="2P", var="playlength", best.scorer=TRUE)
data.opp <- subset(PbP, team!="GSW" & result!="")
densityplot(data=data.opp, shot.type="2P", var="shot_distance", best.scorer=TRUE)
}
\references{
P. Zuccolotto and M. Manisera (2020) Basketball Data Science: With Applications in R. CRC Press.
}
\author{
Marco Sandri, Paola Zuccolotto, Marica Manisera (\email{basketballanalyzer.help@unibs.it})
}
