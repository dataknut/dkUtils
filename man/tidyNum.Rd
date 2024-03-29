% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/tidyNum.R
\name{tidyNum}
\alias{tidyNum}
\title{Tidy long numbers}
\usage{
tidyNum(number, round)
}
\arguments{
\item{number}{an input number or list}

\item{round}{rounding (as in round())}
}
\description{
\code{tidyNum} reformats long numbers to include commas and prevents scientific formats,
making them suitable for printing within R Markdown reports and inline text.
}
\examples{
tidyNum(123456789,0)
tidyNum(10^6,0)
tidyNum(c(10^6, 10^7, 10^8),2)

}
\seealso{
Other Utilities: 
\code{\link{deMacron}()},
\code{\link{equivalise}()},
\code{\link{getLinuxMemProfile}()},
\code{\link{gzipIt}()}
}
\author{
Ben Anderson, \email{banderson@soton.ac.uk}
}
\concept{Utilities}
