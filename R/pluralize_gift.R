#' Takes a noun and makes it plural
#'
#' @param gift A string or vector of strings
#'
#' @return A string or vector of strings with the pluralized words
#'
#' @import stringr
#' @import dplyr
#' @import glue
#' @import purrr
#'
#' @export
pluralize_gift <- function(gift, day){
  orig <- gift
  if(str_detect(gift, "y$") == TRUE) {
    gift <- str_replace(gift, "y$", "ies")
  } else if(gift == "goose"){
    gift <- "geese"
  } else {
    gift <- paste(gift, "s", sep = "")
  }
  if(day == "first") {
    gift <- orig
  }
  return(gift)
}
