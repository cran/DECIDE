\name{print_relimp}
\alias{print_relimp}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Print tables of estimates}
\description{
 Presents various estimates for measures of educational differentials, the relative importance of primary and secondary effects and corresponding standard errors and confidence intervals.
}
\usage{
print_relimp(dataset)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{dataset}{A data frame with 4 columns only, in the following order:
	1: student's ID, 2: class, 3: transition (0 if not, 1 if yes) and 4: performance score.}
}
%\details{
%  ~~ If necessary, more details than the description above ~~
%}
\value{
Returns a more nicely presented version of the results given by \code{relative.importance}.
%  ~Describe the value returned
%  If it is a LIST, use
%  \item{comp1 }{Description of 'comp1'}
%  \item{comp2 }{Description of 'comp2'}
%  ...
}
\references{
Kartsonaki, C., Jackson, M. and Cox, D. R. (2013). Primary and secondary effects: Some methodological issues, in Jackson, M. (ed.) \emph{Determined to succeed?}, Stanford: Stanford University Press.

Erikson, R., Goldthorpe, J. H., Jackson, M., Yaish, M. and Cox, D. R. (2005) On Class Differentials in Educational Attainment. \emph{Proceedings of the National Academy of Sciences}, \bold{102}: 9730--9733

Jackson, M., Erikson, R., Goldthorpe, J. H. and Yaish, M. (2007) Primary and secondary effects in class differentials in educational attainment: The transition to A-level courses in England and Wales. \emph{Acta Sociologica}, \bold{50} (3): 211--229
}
\author{Christiana Kartsonaki}
%\note{ %~~further notes~~ 

% ~Make other sections like Warning with \section{Warning }{....} ~
%}
\seealso{ \code{\link{relative.importance}} }

\examples{
# generate a dataset
set.seed(1)
data <- data.frame(seq(1:10), rep(c(1, 2, 3), length.out = 10),
	rbinom(1, n = 10, p = 0.7), c(rnorm(8, 0, 1), NA, NA))

# run function
print_relimp(data)
}

