#' Oldest Player
#'
#' Returns the oldest player in the data for a given year.
#' @param yr Year
#' @export
#' @examples
#' oldest_player(1970)
#'

oldest_player <- function(yr) {
  ages <- df %>%
          select(Year, Player, Age) %>%
          filter(Year == yr) %>%
          arrange(desc(Age), Player) # name in alphabetical order
  ages[[1,2]]
}
