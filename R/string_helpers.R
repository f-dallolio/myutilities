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
#'
#' @rdname string_helpers
#' @export
#'
path_modify <- function(path, fn = to_snake_case){
  fn <- as_mapper(fn)
  exts <- path_ext(path)
  no_exts <- path_ext_remove(path)
  splits <- path_split(no_exts)
  new_no_exts <- map_vec(splits, ~ path_join(fn(.x)))
  new_no_exts |> path_ext_set(exts)
}
