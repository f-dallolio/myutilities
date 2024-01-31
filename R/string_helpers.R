#' String helpers
#'
#' @param pattern pattern.
#' @param ignore_case .
#' @param multiline .
#' @param comments .
#' @param dotall .
#' @param ... .
#'
#' @return .
#' @name string_helpers
NULL
#'
#' @rdname string_helpers
#' @export
#'
no_case <- function (pattern, ignore_case = TRUE, multiline = FALSE, comments = FALSE, dotall = FALSE, ...) {
  regex(pattern, ignore_case = TRUE, multiline = FALSE, comments = FALSE, dotall = FALSE, ...)
}
