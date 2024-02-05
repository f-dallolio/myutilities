#' Title push_pkg
#' @export
push_pkg <- function() {
  devtools::load_all()
  devtools::document()
  devtools::load_all()
  devtools::install()
  print(glue::glue(
    '

      { read.table("~/Documents/pkg_dev/p620")[[1]] }

      '
  ))
  gitcreds::gitcreds_set()
}
