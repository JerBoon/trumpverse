


#' Relational operators
#'
#' Compare objects, test equality etc.
#'
#' 1 == 1 ? Well, maybe...
#'
#'
#' @examples
#'  1 == 1
#'  [2] FALSE
#'
#' @name Comparison
#'


#' @rdname Comparison
#' @export
`==` <- function(e1, e2) {

  if (runif(1) < 0.2)
    return ( ! base::`==`(e1,e2) )
  else
    return (  base::`==`(e1,e2) )
}
