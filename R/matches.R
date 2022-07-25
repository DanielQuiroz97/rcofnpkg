#' Makes standards datagramse
#'
#' @param data_engsoc data.frame from engsoc soccer data
#'
#' @return data.frame, tibble with prcessed data
#' @export
#'
#' @examples
#' uss_make_matches(engsoccerdata::italy)
uss_make_matches <- function(data_engsoc) {
  result <-
    data_engsoc |>
    tibble::as_tibble() |>
    dplyr::transmute(
      tier = factor(tier, levels = c("1", "2", "3", "4")),
      season = as.integer(Season),
      date = as.Date(Date),
      home = as.character(home),
      visitor = as.character(visitor),
      goals_home = as.integer(hgoal),
      goals_visitor = as.integer(vgoal)
    )
  result
}