#' Unnesting all columns
#'
#' @param data data.frame or object coercible to it.
#' @param ... unused for now.
#'
#' @return data.frame
#' @export
#'
unnest_all <- function(data, ...) {
  tidyr::unnest(data, everything())
}
