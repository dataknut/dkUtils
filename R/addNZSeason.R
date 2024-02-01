#' Add NZ season to a data.table
#'
#' \code{addNZSeason} returns a dt with SOUTHERN hemisphere season added.
#'
#' @param dt the data table
#' @param t the column in the dt which is a date or dateTime that lubridate::month() will work on
#'
#' @author Ben Anderson, \email{b.anderson@@soton.ac.uk}
#' @author Ben Anderson, \email{ben.anderson@@branz.co.nz}
#' @import lubridate
#' @export
#'
addNZSeason <- function(dt, t = r_dateTime){
  dt <- dt[, tmpM := lubridate::month(get(t))] # sets 1 (Jan) - 12 (Dec). May already exist but we can't rely on it
  dt <- dt[, season := "Summer"] # easiest to set the default to be the one that bridges years
  dt <- dt[tmpM >= 3 & tmpM <= 5, season := "Autumn"]
  dt <- dt[tmpM >= 6 & tmpM <= 8 , season := "Winter"]
  dt <- dt[tmpM >= 9 & tmpM <= 11, season := "Spring"]
  # re-order to make sense
  dt <- dt[, season := factor(season, levels = c("Spring", "Summer", "Autumn", "Winter"))]
  with(dt, table(season, lubridate::month(get(t), 
                                          label = TRUE)
                 )
       )
  dt$tmpM <- NULL
  return(dt)
}
