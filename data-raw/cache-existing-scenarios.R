library(purrr)
library(dplyr)
library(readxl)

raw_scenarios <- read_excel("data-raw/scenarios.xlsx", sheet = "scenarios")

scenarios <- purrr::map(1:7, ~get_action_matrices(filter(raw_scenarios, scenario == .))) %>%
  purrr::set_names(toupper(c("one", "two", "three", "four", "five", "six", "seven")))

scenarios$NO_ACTION <- get_action_matrices(tibble::tibble(
  watershed = DSMscenario::watershed_labels,
  action = 1,
  start_year = 1980,
  end_year = 1981,
  units_of_effort = 1))

scenarios$NO_ACTION_GRANDTAB <- scenarios$NO_ACTION
scenarios$NO_ACTION_GRANDTAB$spawn <- scenarios$NO_ACTION_GRANDTAB$spawn[, -1]
scenarios$NO_ACTION_GRANDTAB$inchannel <- scenarios$NO_ACTION_GRANDTAB$inchannel[, -1]
scenarios$NO_ACTION_GRANDTAB$floodplain <- scenarios$NO_ACTION_GRANDTAB$floodplain[, -1]
scenarios$NO_ACTION_GRANDTAB$survival <- scenarios$NO_ACTION_GRANDTAB$survival[, -1]

colnames(scenarios$NO_ACTION_GRANDTAB$spawn) <- 1997:2017
colnames(scenarios$NO_ACTION_GRANDTAB$inchannel) <- 1998:2017
colnames(scenarios$NO_ACTION_GRANDTAB$floodplain) <- 1998:2017
colnames(scenarios$NO_ACTION_GRANDTAB$survival) <- 1998:2017

usethis::use_data(scenarios, overwrite = TRUE)
