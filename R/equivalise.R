#' Equivalise a vector of numbers
#'
#' [dkutils::equivalise()] takes a vector of numbers (or a single number) and equivalises
#' it according to the method specified. Equivalisation is a way to compare attributes such
#' as income, expenditure or consumption across households of different sizes and
#' compositions. It is based on the idea that such values do not linearly increase
#' as .houseodl size increases and increase at different rates for different household
#' compositions. Equivalising the values means they ca be compared across household types.
#' For a detailed discussion and comparison of methods (not all of which are implemented
#' here) see <https://link.springer.com/article/10.1007/s00181-020-01822-6>
#'
#'Methods supported:
#'
#'  * Modified OECD  - moecd
#' `* McClements - mcl
#'  * Square root - sqrt
#' 
#' @param input an input vector
#' @param method the method to use (mclements, modified oecd, square root)
#'
#' @examples
#' equivalise(var = 123456789, method = "moecd")
#' equivalise(var = income, method = "mcl")
#' 
#' @author Ben Anderson, \email{banderson@@soton.ac.uk}
#' @export
#' @family Utilities

equivalise <- function(input, method) {
  print(paste0("Method: ", method))
  if(method == "moecd"){
    v <- input
    OK <- TRUE 
  } else if (method == "moecd"){
    
    OK <- TRUE 
  } else if (method == "sqrt"){
    
    OK <- TRUE 
  }
  if(OK){
    return(v)
  } else {
    print(paste0("Method ",method, " not supported"))
  }
}
