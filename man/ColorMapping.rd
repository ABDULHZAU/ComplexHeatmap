\name{ColorMapping}
\alias{ColorMapping}
\title{
Constructor methods for ColorMapping class  


}
\description{
Constructor methods for ColorMapping class  


}
\usage{
ColorMapping(name, colors = NULL, levels = NULL,
    col_fun = NULL, breaks = NULL, na_col = "#FFFFFF")
}
\arguments{

  \item{name}{name for this color mapping. It is used for drawing the title of the legend.}
  \item{colors}{discrete colors.}
  \item{levels}{levels that correspond to \code{colors}. If \code{colors} is name indexed,  \code{levels} can be ignored.}
  \item{col_fun}{color mapping function that maps continuous values to colors.}
  \item{breaks}{breaks for the continuous color mapping. If \code{col_fun} is generated by \code{\link[circlize]{colorRamp2}}, \code{breaks} can be ignored.}
  \item{na_col}{colors for \code{NA} values.}

}
\details{
\code{colors} and \code{levels} are used for discrete color mapping, \code{col_fun} and  \code{breaks} are used for continuous color mapping.  


}
\value{
A \code{\link{ColorMapping-class}} object.  


}
\author{
Zuguang Gu <z.gu@dkfz.de>  


}
\examples{
# discrete color mapping for characters
cm = ColorMapping(name = "test",
    colors = c("blue", "white", "red"),
    levels = c("a", "b", "c"))
cm

# discrete color mapping for numeric values
cm = ColorMapping(name = "test",
    colors = c("blue", "white", "red"),
    levels = c(1, 2, 3))
cm

# continuous color mapping
require(circlize)
cm = ColorMapping(name = "test",
    col_fun = colorRamp2(c(0, 0.5, 1), c("blue", "white", "red")))
cm
}
