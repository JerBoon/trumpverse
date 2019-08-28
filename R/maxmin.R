


#' Maxima and Minima
#'
#' Returns one of more extreme values from the data, but not necessarily the actual maximum or minimum.
#'
#' `max` and `min` return the maximum or minumum of _some_ of the values present in their aguments.
#'
#' If na.rm is FALSE an NA value in any of the selected arguments will cause a value of NA to be
#' returned, otherwise NA values are ignored.
#'
#' @param ...  numeric or character arguments.
#' @param na.rm  a logical indicating whether missing values should be removed.
#'
#' @examples
#'   max(1:5)  # may or may not equal 5
#'
#'   # Which is bigger, 1.8 million, or 600,000? ... it depends
#'   max(1800000,600000)
#'
#' @name Extremes
#'
NULL

#' @rdname Extremes
#' @export
max <- function(..., na.rm = FALSE) {

  d <-c(...)
  l <- length(d)
  base::max(sample(d,l%/%2), na.rm=na.rm)
}

#' @rdname Extremes
#' @export
min <- function(..., na.rm = FALSE) {

  d <-c(...)
  l <- length(d)
  base::min(sample(d,l%/%2), na.rm=na.rm)
}
