#' Gzip a file
#'
#' \code{gzipIt} gzips a file, over-writing automatically.
#'
#' @param file file to gzip
#'
#' @author Michael Harper
#' @author Ben Anderson, \email{banderson@@soton.ac.uk}
#' @export
#' @family Utilities

gzipIt <- function(file) {
  # Path of output file
  f <- path.expand(file) # just in case
  gz <- paste0(f, ".gz")
  message("Gziping ", f)
  # Gzip it
  # in case it fails (it will on windows - you will be left with a .csv file)
  try(system( paste0("gzip -f '", f,"'"))) # include ' or it breaks on spaces
  message("Gzipped ", f)
}
