\name{create.classdata}
\alias{create.classdata}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Create data frames for each class}
\description{
  Takes a data frame and creates a list of data frames by splitting the data by the factor "class".
}
\usage{
create.classdata(dataset)
}

\arguments{
  \item{dataset}{A data frame produced by \code{prepare.dataset}.}
}
%\details{
%  ~~ If necessary, more details than the description above ~~
%}
\value{
  \item{data_class}{A list with number of elements equal to the number of classes and each element a data frame for each class.}
}
%\references{ ~put references to the literature/web site here ~ }
\author{Christiana Kartsonaki}
%\note{ ~~further notes~~ 
%
% ~Make other sections like Warning with \section{Warning }{....} ~
%}
%\seealso{ ~~objects to See Also as \code{\link{help}}, ~~~ }

\examples{
# generate a dataset
data <- data.frame(seq(1:10), rep(c(1, 2, 3), length.out = 10), 
rbinom(1, n = 10, p = 0.7), c(rnorm(8, 0, 1), NA, NA))

data_clean <- prepare.data(data)

create.classdata(data_clean)
}

