\name{relative.importance}
\alias{relative.importance}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Relative importance of primary and secondary effects}
\description{
 Calculates various estimates for measures of educational differentials, the relative importance of primary and secondary effects and corresponding standard errors and confidence intervals.
% A concise (1-5 lines) description of what the function does.
}
\usage{
relative.importance(dataset)
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
  \item{sample_size}{Total number of individuals}
  \item{no_classes}{Number of classes}
  \item{class_size}{A list of \code{no_classes} elements, each element containing the size of each class}
  \item{percentage_overall}{Overall percentage that made the transition}
  \item{percentage_class}{A list of \code{no_classes} elements, each element containing percentage that made the transition for each class}
  \item{fifty_point}{50\% point of transition}
  \item{parameters}{A data frame with the parameters of logistic regression (\eqn{\alpha, \beta}) and normal distribution (\eqn{\mu, \sigma}) for each class}
  \item{transition_prob}{A data frame with the transition probabilities}
  \item{log_odds}{A data frame with log odds of transition (diagonal elements: actual log odds for each class, off-diagonal: counterfactual log odds)}
  \item{se_logodds}{A data frame with the standard errors of the log odds of transition}
  \item{ci_logodds}{Approximate 95\% confidence intervals for the log odds of transition}
  \item{odds}{Odds of transition}
  \item{log_oddsratios}{Log odds ratios}
  \item{se_logoddsratios}{Standard errors for the log odds ratios}
  \item{ci_logoddsratios}{Approximate 95\% confidence intervals for the log odds ratios}
  \item{oddsratios}{Odds ratios}
  \item{rel_imp_prim1}{Estimates of the relative importance of primary effects using the first equation for calculating the relative importance}
  \item{rel_imp_prim2}{Estimates of the relative importance of primary effects using the second equation for calculating the relative importance}
  \item{rel_imp_prim_avg}{Estimates of the relative importance of primary effects using the the average of the two equations for calculating the relative importance}
  \item{rel_imp_sec1}{Estimates of the relative importance of secondary effects using the first equation for calculating the relative importance}
  \item{rel_imp_sec2}{Estimates of the relative importance of secondary effects using the second equation for calculating the relative importance}
  \item{rel_imp_sec_avg}{Estimates of the relative importance of secondary effects using the the average of the two equations for calculating the relative importance}
  \item{se.ri.1}{Standard errors of the relative importance estimates given by the first equation}
  \item{ci.ri.1}{Approximate 95\% confidence intervals for the relative importance of secondary effects given by the first equation}
  \item{se.ri.2}{Standard errors of the relative importance estimates given by the second equation}
  \item{ci.ri.2}{Approximate 95\% confidence intervals for the relative importance of secondary effects given by the second equation}
  \item{se.ri.avg}{Standard errors of the relative importance estimates given by the average of the two equations}
  \item{ci.ri.avg}{Approximate 95\% confidence intervals for the relative importance of secondary effects given by the average of the two equations}
 }


\references{
Kartsonaki, C., Jackson, M. and Cox, D. R. (forthcoming). Primary and Secondary Effects: Some Methodological Issues, in Jackson, M. (Ed.), \emph{Determined to Succeed? Performance, Choice and Education}.

Erikson, R., Goldthorpe, J. H., Jackson, M., Yaish, M. and Cox, D. R. (2005). On Class Differentials in Educational Attainment. \emph{Proceedings of the National Academy of Sciences}, \bold{102}: 9730--9733

Jackson, M., Erikson, R., Goldthorpe, J. H. and Yaish, M. (2007). Primary and secondary effects in class differentials in educational attainment: The transition to A-level courses in England and Wales. \emph{Acta Sociologica}, \bold{50} (3): 211--229
}
\author{Christiana Kartsonaki}
%\note{ ~~further notes~~ 

% ~Make other sections like Warning with \section{Warning }{....} ~
%}
\seealso{ \code{\link{print_relimp}},  \code{\link{plot_transition}} }
%~~objects to See Also as \code{\link{help}}, ~~~ }


