#' deMacron a string
#'
#' No, \code{deMacron} doesn't remove French politicians. It replaces all examples of macron vowels
#' in a string with the 'anglicised' equivalents. This is useful for analysing
#' strings such as hashtags where users might mix them but we want kakī == kaki for example. Macron
#' vowels are common in Māori - see https://kupu.maori.nz/about/macrons-keyboard-setup
#'
#' @param string string to de-macron
#'
#' @author Ben Anderson, \email{banderson@@soton.ac.uk}
#' @author David Hood
#' @export
#' @family Utilities

deMacron <- function(original){
  # with thanks to https://twitter.com/Thoughtfulnz/status/1047648312810033152
  macron <- c("ā", "ē", "ī", "ō", "ū") # set macron vowels https://kupu.maori.nz/about/macrons-keyboard-setup
  nonMacron <- c("a", "e", "i", "o", "u") # roman equiv
  return(nonMacron[which(original == macron)])
}
