#' Concatenate unquoted object names
#'
#' @param ... quoted or unquoted object names
#'
#' @return a character vector.
#' @export
#'
cc <- function(...) {
  dots <- enquos(..., .named = TRUE)
  names(dots)
}
