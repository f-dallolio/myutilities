#' Title add_util_function
#' @export
add_util_function <- function(.fn, .pkg = "~/Documents/pkg_dev/myutilities/", print = TRUE) {
  quo_fn <- rlang::enquos(.fn, .named = T)
  fname <- names(quo_fn)
  .filename <- paste0(fname, ".R")
  .path <- paste(normalizePath(.pkg), "R", .filename, sep = "/")
  out <- glue::glue("\n    #' Title {fname}\n    #' @export\n    {fname} <- {rlang::expr_text(.fn)}\n    ")
  if (print) {
    print(out)
  }
  if (!is.null(.pkg)) {
    writeChar(object = out, con = .path)
    roxygen2::roxygenise(package.dir = .pkg, clean = T)
    devtools::load_all(path = .pkg)
    devtools::install(pkg = .pkg)
    message("-- OK --")
  }
}
