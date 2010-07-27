\name{prepare.data}
\alias{prepare.data}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Prepare dataset to be used in \code{relative.importance}}
\description{
 Prepares datasets to be in the format required by the function \code{relative.importance}. It is automatically called by \code{relative.importance}.
 % ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
prepare.data(dataset)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{dataset}{A data frame with 4 columns only, in the following order:
	1: student's ID, 2: class, 3: transition (0 if not, 1 if yes) and 4: performance score.}
}
\details{
%  ~~ If necessary, more details than the description above ~~
}
\value{
  \item{dataset}{The data frame given as the argument, with column names changed and missing values removed.}
%  ~Describe the value returned
%  If it is a LIST, use
%  \item{comp1 }{Description of 'comp1'}
%  \item{comp2 }{Description of 'comp2'}
%  ...
}

\author{Christiana Kartsonaki}
%\note{ ~~further notes~~ 
%
% ~Make other sections like Warning with \section{Warning }{....} ~
%}
%\seealso{ ~~objects to See Also as \code{\link{help}}, ~~~ }

