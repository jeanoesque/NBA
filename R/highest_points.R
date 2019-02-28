#' Highest Points
#'
#' Returns the highest points recorded in the data for a given year.
#' @param yr Year
#' @export
#' @examples
#' highest_points(1970)
#'

highest_points <- function(yr) {
  points <- df %>%
            select(Year, PTS) %>%
            filter(Year == yr) %>%
            arrange(desc(PTS))
  points[[1,2]]
}
