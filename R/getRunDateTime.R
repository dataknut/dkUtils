#' Get dateTime
#'
#' \code{getRunDateTime} returns a formated run dateTime.
#'
#'
#' @author Ben Anderson, \email{b.anderson@@soton.ac.uk}
#' @export
#'
getRunDateTime <- function(){
  runDate <- paste0(Sys.time(), " (", Sys.timezone(), ")")
  return(runDate)
}
