If x is null/empty/NA then y otherwise x
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
#' NULL ----
#' @rdname if_then
#' @export
`%||%` <- function(x, y) {
  if (is.null(x)) {
    y
  } else {
    x
  }
}

#' @rdname if_then
#' @export
if_null <- Vectorize(`%||%`)


#' @rdname if_then
#' @export
is_null <- rlang:::is_null


#' empty ----
#'
#' @rdname if_then
#' @export
`%0%` <- function(x, y) {
  if (!length(x)) {
    y
  } else {
    x
  }
}

#' @rdname if_then
#' @export
if_empty <- Vectorize(`%0%`)


#' @rdname if_then
#' @export
is_empty <- rlang:::is_empty

#' NA ----
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

#' @rdname if_then
#' @export
if_na <- Vectorize(`%na%`)


#' @rdname if_then
#' @export
is_na <- rlang:::is_na
