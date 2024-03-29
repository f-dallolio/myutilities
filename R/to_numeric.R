#' Title to_numeric
#' @export
to_numeric <- function (x) 
{
    x <- as.character(x)
    y <- suppressWarnings(try(as.numeric(x)))
    if (not_na(y)) {
        return(y)
    }
    else {
        return(x)
    }
} 