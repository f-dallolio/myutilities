# Empty Vectors from character class definition
#'
#' @param x string with class name.
#'
#' @return empty vector with class `x`.
#' @export
#'
str2vec_class <- function(x = character()) {
  vctrs::new_vctr(logical(), class = x)
}
