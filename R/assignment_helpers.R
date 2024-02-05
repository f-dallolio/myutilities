#' Assignment helpers
#'
#' @param x vactor of symbols for assignment. Same as lhs of `%<<-%`.
#' @param value values to assign.
#' @param env environment.
#'
#' @name assignment_helpers
NULL
#'
#' @rdname assignment_helpers
#' @export
m_assign <- function(x, value, env = .GlobalEnv) {
  tryCatch(zeallot:::multi_assign(substitute(x), value, env),
    invalid_lhs = function(e) {
      stop("invalid `%<-%` left-hand side, ", e$message,
        call. = FALSE
      )
    }, invalid_rhs = function(e) {
      stop("invalid `%<-%` right-hand side, ", e$message,
        call. = FALSE
      )
    }
  )
}
#'
#' @rdname assignment_helpers
#' @export
`%<<-%` <- function() {
  purrr:::partial(m_assign, env = .GlobalEnv)
}
