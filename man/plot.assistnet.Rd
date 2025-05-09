% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot.assistnet.R
\name{plot.assistnet}
\alias{plot.assistnet}
\title{Plots a network from a 'assistnet' object}
\usage{
\method{plot}{assistnet}(
  x,
  layout = "kamadakawai",
  layout.par = list(),
  edge.thr = 0,
  edge.col.lim = NULL,
  edge.col.lab = NULL,
  node.size = NULL,
  node.size.lab = NULL,
  node.col = NULL,
  node.col.lim = NULL,
  node.col.lab = NULL,
  node.pal = colorRampPalette(c("white", "blue", "red")),
  edge.pal = colorRampPalette(c("white", "blue", "red")),
  ...
)
}
\arguments{
\item{x}{an object of class \code{assistnet}.}

\item{layout}{character, network vertex layout algorithm (see \code{\link[sna]{gplot.layout}}) such as \code{"kamadakawai"} (the default).}

\item{layout.par}{a list of parameters for the network vertex layout algorithm (see \code{\link[sna]{gplot.layout}}).}

\item{edge.thr}{numeric, threshold for edge values; values below the threshold are set to 0.}

\item{edge.col.lim}{numeric vector of length two providing limits of the scale for edge color.}

\item{edge.col.lab}{character, label for edge color legend.}

\item{node.size}{character, indicating the name of the variable for node size (one of the columns of the \code{nodeStats} data frame in the \code{x} object, see \code{\link{assistnet}}).}

\item{node.size.lab}{character, label for node size legend.}

\item{node.col}{character, indicating the name of the variable for node color (one of the columns of the \code{nodeStats} data frame in the \code{x} object, see \code{\link{assistnet}}).}

\item{node.col.lim}{numeric vector of length two providing limits of the scale for node color.}

\item{node.col.lab}{character, label for node color legend.}

\item{node.pal}{color palette for node colors.}

\item{edge.pal}{color palette for edge colors.}

\item{...}{other graphical parameters.}
}
\value{
A \code{ggplot2} object
}
\description{
Plots a network from a 'assistnet' object
}
\examples{
PbP <- PbPmanipulation(PbP.BDB)
PbP.GSW <- subset(PbP, team=="GSW" & player!="")
out <- assistnet(PbP.GSW)
plot(out, layout="circle", edge.thr=30, node.col="FGM_ASTp", node.size="ASTPTS")
}
\references{
P. Zuccolotto and M. Manisera (2020) Basketball Data Science: With Applications in R. CRC Press.
}
\seealso{
\code{\link{assistnet}}
}
\author{
Marco Sandri, Paola Zuccolotto, Marica Manisera (\email{basketballanalyzer.help@unibs.it})
}
