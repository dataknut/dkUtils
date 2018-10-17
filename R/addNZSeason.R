#' Add NZ season to a data.table
#'
#' \code{addNZSeason} returns a dt with SOUTHERN hemisphere season added.
#'
#' @param dt the data table
#' @param r_dateTime the column in the dt which is a date that lubridate::month() will work on
#'
#' @author Ben Anderson, \email{b.anderson@@soton.ac.uk}
#' @import lubridate
#' @export
#'
addNZSeason <- function(dt,r_dateTime = r_dateTime){
  dt <- dt[, tmpM := lubridate::month(r_dateTime)] # sets 1 (Jan) - 12 (Dec). May already exist but we can't rely on it
  dt <- dt[, season := "Summer"] # easiest to set the default to be the one that bridges years
  dt <- dt[tmpM >= 3 & tmpM <= 5, season := "Autumn"]
  dt <- dt[tmpM >= 6 & tmpM <= 8 , season := "Winter"]
  dt <- dt[tmpM >= 9 & tmpM <= 11, season := "Spring"]
  # re-order to make sense
  dt <- dt[, season := factor(season, levels = c("Spring", "Summer", "Autumn", "Winter"))]
  table(dt$season, lubridate::month(dt$r_dateTime, label = TRUE))
  dt$tmpM <- NULL
  return(dt)
}
