library(tidyverse)
library(readxl)

watershed_labels <- DSMscenario::watershed_labels

scenarios <- read_excel("data-raw/scenarios.xlsx", sheet = "scenarios")

## Scenario 1 -----
scenario1 <- filter(scenarios, scenario == 1)
scenario1_fr <- create_scenario(scenario_df = scenario1, species = DSMscenario::species$FALL_RUN)

# Scenario 2 -----
scenario2 <- filter(scenarios, scenario == 2)
# or
scenario2 <- data.frame(watershed = c("Upper Sacramento River", "Upper Sacramento River",
                                      "American River", "Feather River", "Lower-mid Sacramento River",
                                      "Clear Creek", "Butte Creek", "Deer Creek", "Stanislaus River"),
                        action = c(3, 3, 3, 3, 3, 3, 3, 3, 3),
                        start_year = c(1980, 1990, 1980, 1980, 1980, 1990, 1990, 1990, 1990),
                        end_year = c(1989, 1999, 1989, 1989, 1989, 1999, 1999, 1999, 1999),
                        units_of_effort = c(2, 1, 1, 1, 1, 1, 1, 1, 1),
                        scenario = c(2, 2, 2, 2, 2, 2, 2, 2, 2))

scenario2_fr <- create_scenario(scenario_df = scenario2, species = DSMscenario::species$FALL_RUN)

# Scenario 3 ------
scenario3 <- matrix(c(3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,
                      NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                      NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                      NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                      NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                      NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,3,3,3,3,3,3,3,3,3,3,
                      NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,3,3,3,3,3,3,3,3,3,3,
                      NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                      NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                      NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                      NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                      NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                      NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                      NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                      NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                      NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                      NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                      NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                      3,3,3,3,3,3,3,3,3,3,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                      NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                      3,3,3,3,3,3,3,3,3,3,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                      NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                      3,3,3,3,3,3,3,3,3,3,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                      NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                      NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                      NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                      NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,3,3,3,3,3,3,3,3,3,3,
                      NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                      NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,3,3,3,3,3,3,3,3,3,3,
                      NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                      NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA),
                    ncol=20,byrow=TRUE, dimnames = list(watershed_labels, 1980:1999))

scenario3 %>%
  as_tibble() %>%
  mutate(watershed = watershed_labels) %>%
  gather(year, decision, -watershed) %>%
  filter(!is.na(decision)) %>%
  group_by(watershed, decision) %>%
  summarise(start_year = min(year), end_year = max(year)) %>%
  arrange(start_year)

base %>%
  add_habitat(watershed = "Upper Sacramento River", amount = amount_1, years = 1980:1989) %>%
  add_habitat(watershed = "Upper Sacramento River", amount = amount_2, years = 1990:1999) %>%
  add_habitat(watershed = c("American River", "Feather River", "Lower-mid Sacramento River"),
              amount = amount_2, years = 1980:1989) %>%
  add_habitat(watershed = c("Butte Creek", "Clear Creek", "Mokelumne River", "Stanislaus River"),
              amount = amount_2, years = 1990:1999)

# Scenario 4 ----
scenario4 <- matrix(c(3,NA,3,NA,3,NA,3,NA,3,NA,3,NA,3,NA,3,NA,3,NA,3,NA,
                      NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                      NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                      NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                      NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                      NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                      NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                      NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                      NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                      NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                      NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                      NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                      NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                      NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                      NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                      3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,
                      NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                      NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                      NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                      NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                      3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,
                      NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                      NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                      3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,
                      NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                      NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                      NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                      NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                      NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                      NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                      NA,3,NA,3,NA,3,NA,3,NA,3,NA,3,NA,3,NA,3,NA,3,NA,3),
                    ncol=20,byrow=TRUE, dimnames = list(watershed_labels, 1980:1999))

scenario4 %>%
  as_tibble() %>%
  mutate(watershed = watershed_labels) %>%
  gather(year, decision, -watershed) %>%
  filter(!is.na(decision)) %>%
  group_by(watershed, decision) %>%
  summarise(start_year = min(year), end_year = max(year)) %>%
  arrange(start_year, end_year)

# base %>%
#   add_habitat(watershed = "Upper Sacramento River", amount = amount_1, years = 1980:1989) %>%
#   add_habitat(watershed = "Upper Sacramento River", amount = amount_2, years = 1990:1999) %>%
#   add_habitat(watershed = c("American River", "Feather River", "Lower-mid Sacramento River"),
#               amount = amount_2, years = 1980:1989) %>%
#   add_habitat(watershed = c("Butte Creek", "Clear Creek", "Mokelumne River", "Stanislaus River"),
#               amount = amount_2, years = 1990:1999)

# Scenario 5
