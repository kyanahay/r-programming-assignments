#' Summarize a Numeric Vector
#'
#' This function returns the mean and median of a numeric vector.
#'
#' @param x A numeric vector.
#' @return A list containing the mean and median.
#' @export
summarize_vector <- function(x) {
  list(
    mean = mean(x, na.rm = TRUE),
    median = median(x, na.rm = TRUE)
  )
}
