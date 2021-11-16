#' Tidy long numbers
#'
#' \code{tidyNum} reformats long numbers to include commas and prevents scientific formats,
#'  making them suitable for printing within R Markdown reports and inline text.
#'
#' @param number an input number or list
#' @param round rounding (as in round())
#'
#' @examples
#' tidyNum(123456789)
#' tidyNum(10^6)
#' tidyNum(c(10^6, 10^7, 10^8))
#'
#' @author Ben Anderson, \email{banderson@@soton.ac.uk}
#' @export
#' @family Utilities

tidyNum <- function(number, round) {
  n <- round(number, eval(round))
  nf <- format(n, big.mark=",", scientific=FALSE)
  return(nf)
}
