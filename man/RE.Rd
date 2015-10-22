% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/summary_functions.R
\name{RE}
\alias{RE}
\title{Compute the relative efficiency of multiple estimators}
\usage{
RE(RMSEs)
}
\arguments{
\item{RMSEs}{a vector or matrix of mean square error values (see \code{\link{RMSE}}), where the first
 element/row will be used as the reference}
}
\value{
returns a vector/matrix of ratios indicating the relative efficiency compared to the first
  estimator (which by default will be equal to 1). Values less than 1 indicate worse efficiency, while
  values greater than 1 indicate better efficiency
}
\description{
Computes the relative efficiency given the RMSE values for multiple estimators
}
\examples{
pop <- 1
samp1 <- rnorm(100, 1, sd = 0.5)
RMSE1 <- RMSE(samp1, pop)
samp2 <- rnorm(100, 1, sd = 1)
RMSE2 <- RMSE(samp2, pop)

RE(c(RMSE1, RMSE2))
}
