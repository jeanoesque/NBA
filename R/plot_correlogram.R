#' Plot Correlogram Function
#'
#' Plots the correlogram of all numeric continuous variables in the data for a given year.
#' @param yr Year
#' @keywords correlogram
#' @export
#' @examples
#' plot_correlogram(1970)
#'

plot_correlogram <- function(yr) {
  numbers <- df %>%
             filter(Year == yr) %>%
             keep(is.numeric) %>%
             select(-Year) # exclude Year variable
  M <- cor(numbers) # correlation matrix
  library(corrplot)
  corrplot(M, method="circle", na.label="square", na.label.col="white")
}
