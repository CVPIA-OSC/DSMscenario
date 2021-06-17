library(purrr)
library(dplyr)
library(readxl)

raw_scenarios <- read_excel("data-raw/scenarios.xlsx", sheet = "scenarios")

scenarios <- purrr::map(1:7, ~filter(raw_scenarios, scenario == .)) %>%
  purrr::set_names(toupper(c("one", "two", "three", "four", "five", "six", "seven")))

scenarios$NO_ACTION <- tibble::tibble(
  watershed = DSMscenario::watershed_labels,
  action = 1,
  start_year = 1980,
  end_year = 1981,
  units_of_effort = 1)

usethis::use_data(scenarios, overwrite = TRUE)
