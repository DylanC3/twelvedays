#' Takes a noun and makes it plural
#'
#' @param dataset A data frame containing information about gifts
#' @param line The number of the line for the day you want to sing about
#' @param phrase_col The variable name for the column in the dataset that
#' contains the gift phrases
#'
#' @return A string singing the line of the song with all gifts for the given day.
#'
#' @import stringr
#' @import dplyr
#' @import glue
#' @import purrr
#'
#' @export

sing_day <- function(dataset, line, phrase_col){
  num <- dataset$Day.in.Words[line == dataset$Day]
  str_vec <- c("On the", num, "day of Christmas, my true love gave to me,", "\n")
  paste(str_vec) %>% cat()

  phrases <- dataset %>% pull({{phrase_col}})
  ret_vec <- c()
  ret_val <- map_chr(line:1, ~paste(ret_vec, phrases[.x], sep = ""))
  cat(ret_val, sep = "\n")

}
