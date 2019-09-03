
#' confuse
#'
#' Confuses the values of a data frame or tibble. Essentially randomises the values in each column.
#'
#' @param data
#'
#' @return Object of the same class
#'
#' @export
#'
#' @examples
#'   # Luke Skywalker is a brown haired droid from Alderaan..?
#'   confuse(dplyr::starwars)
#'
confuse <- function(data) {
  UseMethod("confuse", data)
}

confuse.tbl <- function(data) {
  message("confusing tibble")
  for (i in 1:ncol(data)) {
    data[,i] <- data[base::sample(nrow(data)),i]
  }

  return(data)
}

# data.frames are slightly more tricky, as the tibble version of the code can fail
# with "list" classed columns
confuse.data.frame <- function(data) {
  message("confusing data frame")
  return(data)
}

confuse.default <- function(data) {
  message("object is not readily confusable")  #aka haven't written the code yet
  return(data)
}



