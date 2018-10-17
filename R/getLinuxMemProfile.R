#' Report current hardware profile - only works on Linux (not Mac OS X etc)
#'
#'
#' @author Ben Anderson, \email{banderson@@soton.ac.uk}
#' @export
#' @family Utilities

getLinuxMemProfile <- function(){
  system("cat /proc/meminfo")
  system("cat /proc/cpuinfo")
}
