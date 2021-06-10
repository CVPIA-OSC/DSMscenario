library(purrr)
library(dplyr)
library(readxl)

raw_scenarios <- read_excel("data-raw/scenarios.xlsx", sheet = "scenarios")

scenarios <- purrr::map(1:7, ~filter(raw_scenarios, scenario == .)) %>%
  purrr::set_names(c("one", "two", "three", "four", "five", "six", "seven"))

usethis::use_data(scenarios, overwrite = TRUE)
