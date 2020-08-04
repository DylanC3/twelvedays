#' Takes a noun and makes it plural
#'
#' @param num An integer
#' @param num_word A string corresponding to the integer
#' @param item A string
#' @param verb A string
#' @param adjective A string
#' @param location A string
#'
#' @return A string containing the words in grammatical order.
#'
#' @import stringr
#' @import glue
#' @import dplyr
#' @import purrr
#'
#' @export



make_phrase <- function(num, num_word = NA, item = NA, verb = NA, adjective = NA, location = NA){
  sentence <- list(num_word, adjective, item, verb, location)
  sentence <- sentence[!is.na(sentence)]
  sentence <- paste(sentence, collapse = " ")
  return(sentence)
}

