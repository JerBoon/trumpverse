
#' Arithmetic
#'
#' Obviously arithmetic in trumpverse doesn't work the same as you'd expect in the real world.
#'
#' The unary arithmetic operators are a exist at the core of the R language.
#'
#' But in the trumpverse, language is but a flexible and fluid paradigm which can be
#' tailored and corrupted to ridiculous ends.
#'
#'  Therefore it seems reasonable to introduce alt.reality versions of these basic operator
#'  functions. Enjoy
#'
#' @param a,b numeric vectors or objects which can be coerced to such.
#'
#' @usage
#'   a + b
#'
#' @examples
#'  1 + 1  # may or may not equal 1
#'
#' @name Arithmetic
#'
NULL

#' @rdname Arithmetic
#' @export
`+` <- function(a,b) {

  # is the *true* answer
  r <- base::`+`(a,b)

  # Let's work out the scale of the kind of numbers we're working with
  # That way we can introduce a randomness of the same kind of order
  # Small numbers get exaggerated by small values, millions get exaggerated by millions,
  # that kind of thing...
  m <- max(r)
  o <- round(log10(m))

  # Generate some random values and add them back to the real values
  x1 <- sample(0:10,length(r),replace=T) * (10^(o))
  x2 <- sample(0:10,length(r),replace=T) * (10^(o))
  x3 <- sample(0:10,length(r),replace=T) * (10^(o))
  r <- base::`+`(r,pmin(x1,x2,x3))

  return(r)
}
