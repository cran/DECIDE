\name{compare.relimp}
\alias{compare.relimp}

\title{Compare estimates of log odds, log odds ratios and relative importance obtained by two datasets}
\description{
  Computes 95\% confidence intervals for the differences in log odds of transition, log odds ratios and relative importance estimates between the two datasets. Also calculates chi-squared test statistics and p-values for testing whether the differences are different from zero.
}
\usage{
compare.relimp(dataset1, dataset2)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{dataset1}{is the first dataset; a data frame with 4 columns, in the following order:
	1: student's ID, 2: class, 3: transition (0 if not, 1 if yes) and 4: performance score.}
  \item{dataset2}{is the second dataset; a data frame with 4 columns, in the following order:
	1: student's ID, 2: class, 3: transition (0 if not, 1 if yes) and 4: performance score.}
}
%\details{
 % ~~ If necessary, more details than the description above ~~
%}
\value{
  \item{ci.diff.lo}{95\% confidence intervals for differences in log odds of transition
			}
  \item{test.diff.lo}{Test statistic for differences in log odds
			}
  \item{test.diff.lo.pvalue}{p-value for testing for differences in log odds
			}
  \item{ci.diff.lor}{95\% confidence intervals for differences in log odds ratios
			}
  \item{test.diff.lo}{Test statistic for differences in log odds ratios
			}
  \item{test.diff.lo.pvalue}{p-value for testing for differences in log odds ratios
			}
  \item{ci.diff.ri.1}{95\% confidence intervals for relative importance estimates - 1
			}
  \item{ci.diff.ri.2}{95\% confidence intervals for relative importance estimates - 2
			}
  \item{ci.diff.ri.avg}{95\% confidence intervals for relative importance estimates - average
			}
}
 

\references{
Kartsonaki, C., Jackson, M. and Cox, D. R. (2013). Primary and secondary effects: Some methodological issues, in Jackson, M. (ed.) \emph{Determined to succeed?}, Stanford: Stanford University Press.

Erikson, R., Goldthorpe, J. H., Jackson, M., Yaish, M. and Cox, D. R. (2005) On Class Differentials in Educational Attainment. \emph{Proceedings of the National Academy of Sciences}, \bold{102}: 9730--9733

Jackson, M., Erikson, R., Goldthorpe, J. H. and Yaish, M. (2007) Primary and secondary effects in class differentials in educational attainment: The transition to A-level courses in England and Wales. \emph{Acta Sociologica}, \bold{50} (3): 211--229
}
\author{Christiana Kartsonaki}
%\note{ ~~further notes~~ 
%
% ~Make other sections like Warning with \section{Warning }{....} ~
%}
%\seealso{ ~~objects to See Also as \code{\link{help}}, ~~~ }

\examples{
# generate two datasets
set.seed(1)
data1 <- data.frame(seq(1:10), rep(c(1, 2), length.out = 10), 
c(rep(0, times = 3), rep(1, times = 7)), 
c(rnorm(4, 0, 1), rnorm(4, 0.5, 1), NA, NA))

data2 <- data.frame(seq(1:10), rep(c(1, 2), length.out = 10), 
c(rep(0, times = 5), rep(1, times = 5)), 
c(rnorm(5, 1, 1), rnorm(5, 0.5, 1)))

# run function
compare.relimp(data1, data2)
}

% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
%\keyword{ ~kwd1 }
%\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line

