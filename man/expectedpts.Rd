% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/expectedpts.R
\name{expectedpts}
\alias{expectedpts}
\title{Plots expected points of shots as a function of the distance from the basket (default) or another variable}
\usage{
expectedpts(
  data,
  var = "shot_distance",
  players = NULL,
  bw = 10,
  period.length = 12,
  palette = gg_color_hue,
  team = TRUE,
  col.team = "gray",
  col.hline = "black",
  xlab = NULL,
  x.range = "auto",
  title = NULL,
  legend = TRUE
)
}
\arguments{
\item{data}{a data frame whose rows are field shots and with the following columns: \code{points}, \code{event_type}, \code{player} (only if the \code{players} argument is not \code{NULL}) and at least one of \code{playlength}, \code{periodTime}, \code{totalTime}, \code{shot_distance} (the column specified in \code{var}, see Details).}

\item{var}{character, a string giving the name of the numerical variable according to which the expected points are estimated; available options \code{"playlength"}, \code{"periodTime"}, \code{"totalTime"}, \code{"shot_distance"} (default).}

\item{players}{subset of players to be displayed (optional; it can be used only if the \code{player} column is present in \code{data}).}

\item{bw}{numeric, smoothing bandwidth of the kernel density estimator (see \code{\link[stats]{ksmooth}}).}

\item{period.length}{numeric, the length of a quarter in minutes (default: 12 minutes as in NBA).}

\item{palette}{color palette.}

\item{team}{logical; if \code{TRUE}, draws the expected points for all the shots in data.}

\item{col.team}{character, color of the expected points line for all the shots in data (default \code{"gray"}).}

\item{col.hline}{character, color of the dashed horizontal line (default \code{"black"}) denoting the expected points for all the shots in data, not conditional to the variable in the x-axis.}

\item{xlab}{character, x-axis label.}

\item{x.range}{numerical vector or character; available options: \code{NULL} (x-axis range defined by \code{ggplot2}, the default), \code{"auto"} (internally defined x-axis range), or a 2-component numerical vector (user-defined x-axis range).}

\item{title}{character, plot title.}

\item{legend}{logical, if \code{TRUE}, color legend is displayed (only when \code{players} is not \code{NULL}).}
}
\value{
A \code{ggplot2} plot
}
\description{
Plots expected points of shots as a function of the distance from the basket (default) or another variable
}
\details{
The \code{data} data frame could also be a play-by-play dataset provided that rows corresponding to events different from field shots have values different from \code{"shot"} or \code{"miss"} in the \code{even_type} variable.

Required columns:

\itemize{
\item \code{event_type}, a factor with the following levels: \code{"shot"} for made field shots and \code{"miss"} for missed field shots
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
PbP.GSW <- subset(PbP, team=="GSW" & !is.na(shot_distance))
plrys <- c("Stephen Curry","Kevin Durant")
expectedpts(data=PbP.GSW, bw=10, players=plrys, col.team='dodgerblue',
        palette=colorRampPalette(c("gray","black")), col.hline="red")
}
\references{
P. Zuccolotto and M. Manisera (2020) Basketball Data Science: With Applications in R. CRC Press.
}
\author{
Marco Sandri, Paola Zuccolotto, Marica Manisera (\email{basketballanalyzer.help@unibs.it})
}
