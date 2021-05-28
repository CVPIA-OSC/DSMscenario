library(tidyverse)
library(readxl)

watershed_labels <- DSMscenario::watershed_labels

scenarios <- read_excel("data-raw/scenarios.xlsx", sheet = "scenarios")

## Scenario 1 -----
scenario1 <- filter(scenarios, scenario == 1)
scenario1_fr <- create_scenario(scenario_df = scenario1, species = DSMscenario::species$FALL_RUN)

# Scenario 2 -----
scenario2 <- filter(scenarios, scenario == 2)
scenario2_fr <- create_scenario(scenario_df = scenario2, species = DSMscenario::species$FALL_RUN)

# Scenario 3 ------
scenario3 <- filter(scenarios, scenario == 3)
scenario3_fr <- create_scenario(scenario_df = scenario3, species = DSMscenario::species$FALL_RUN)

# Scenario 4 ----
scenario4 <- filter(scenarios, scenario == 4)
scenario4_fr <- create_scenario(scenario_df = scenario4, species = DSMscenario::species$FALL_RUN)

# Scenario 5 ---
scenario5 <- filter(scenarios, scenario == 5)
scenario5_fr <- create_scenario(scenario_df = scenario5, species = DSMscenario::species$FALL_RUN)

# Scenario 6 ---
scenario6 <- filter(scenarios, scenario == 6)
scenario6_fr <- create_scenario(scenario_df = scenario6, species = DSMscenario::species$FALL_RUN)

# Scenario 7 ---
scenario7 <- filter(scenarios, scenario == 7)
scenario7_fr <- create_scenario(scenario_df = scenario7, species = DSMscenario::species$FALL_RUN)

