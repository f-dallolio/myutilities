#' Title named_list
#' @export
named_list <- function(..., .named = TRUE, .ignore_empty = c(
                         "trailing", "none",
                         "all"
                       ), .preserve_empty = FALSE, .homonyms = c(
                         "keep", "first",
                         "last", "error"
                       ), .check_assign = FALSE) {
  .Call(ffi_dots_list,
    frame_env = environment(), named = .named,
    ignore_empty = .ignore_empty, preserve_empty = .preserve_empty,
    unquote_names = TRUE, homonyms = .homonyms, check_assign = .check_assign
  )
}
