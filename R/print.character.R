

#' @export
print.character <- function(x) {

  samp <- runif(length(x)) < 0.3
  x[samp] <- sub(" [[:alpha:]]+ [[:alpha:]]+ [[:alpha:]]+[.]*$"," covfefe", x[samp])
  print.default(x)
}
