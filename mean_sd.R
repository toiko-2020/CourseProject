mean_sd <- function(mydf) {
  mydf_subset <- cbind(
    mydf[, c(1, 3)],
    mydf[, grepl("mean(?!Freq)|std", names(mydf), perl = TRUE)])
  return(mydf_subset)
}
mydf_subset <- mean_sd(mydf)