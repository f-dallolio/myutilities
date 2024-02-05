#' Empty list
#'

#' @name empty_list_df
NULL
#'
#' @rdname empty_list_df
#' @export
empty_named_list <- function(...) {
  .names <- rlang::enquos(..., .named = TRUE) |> names()
  .data <- vector("list", length(.names))
  structure(.data, .Names = .names)
}
#'
#' @rdname empty_list_df
#' @export
empty_named_df <- function(...) {
  empty_named_list(...) |> as.data.frame()
}
