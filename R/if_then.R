#' If x is null/empty/NA then y otherwise x
#'
#' @param x original.
#' @param y alternative
#'
#'
#' @return x or y.
#'
#' @name if_then
NULL
#'
#'

# NULL ----

#'
#' @rdname if_then
#' @export
is_null <- rlang:::is_null
#'
#' @rdname if_then
#' @export
`%||%` <- function(x, y) {
  if (is_null(x)) {
    y
  } else {
    x
  }
}
#'
#' @rdname if_then
#' @export
if_null <- Vectorize(`%||%`)


# empty ----

#'
#' @rdname if_then
#' @export
is_empty <- rlang:::is_empty
#'
#' @rdname if_then
#' @export
`%0%` <- function(x, y) {
  if (is_empty(x)) {
    y
  } else {
    x
  }
}
#'
#' @rdname if_then
#' @export
if_empty <- Vectorize(`%0%`)


# NA ----

#'
#'
#' @rdname if_then
#' @export
is_na <- rlang:::is_na
#'
#' @rdname if_then
#' @export
`%na%` <- function(x, y){
  if (is.na(x)) {
    y
  } else {
    x
  }
}
#'
#' @rdname if_then
#' @export
if_na <- Vectorize(`%na%`)



