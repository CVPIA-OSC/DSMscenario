library(tidyverse)
library(readxl)

watershed_labels <- DSMscenario::watershed_labels

scenarios <- read_excel("data-raw/scenarios.xlsx", sheet = "scenarios")

## Scenario 1 -----
scenario1 <- filter(scenarios, scenario == 1)
scenario1 %>%
  group_by(watershed) %>%
  summarise(sum(units_of_effort * 10))

scenario1 %>%
  group_by(start_year) %>%
  summarise(sum(units_of_effort) * 10)

sum(scenario1$units_of_effort*10)

scenario1_fr <- create_scenario(scenario_df = scenario1, species = DSMscenario::species$FALL_RUN)

# Scenario 2 -----
scenario2 <- filter(scenarios, scenario == 2)
scenario2 %>%
  group_by(watershed) %>%
  summarise(sum(units_of_effort * 10))

scenario2 %>%
  group_by(start_year) %>%
  summarise(sum(units_of_effort) * 10)

sum(scenario2$units_of_effort*10)

scenario2_fr <- create_scenario(scenario_df = scenario2, species = DSMscenario::species$FALL_RUN)

# Scenario 3 ------
scenario3 <- filter(scenarios, scenario == 3)
scenario3 %>%
  group_by(watershed) %>%
  summarise(sum(units_of_effort * 10))

scenario3 %>%
  group_by(start_year) %>%
  summarise(sum(units_of_effort) * 10)

sum(scenario3$units_of_effort*10)

scenario3_fr <- create_scenario(scenario_df = scenario3, species = DSMscenario::species$FALL_RUN)

# Scenario 4 ----
scenario4 <- filter(scenarios, scenario == 4)
scenario4 %>%
  group_by(watershed) %>%
  summarise(sum(units_of_effort * 20))

scenario4 %>%
  group_by(start_year) %>%
  summarise(sum(units_of_effort) * 20)

sum(scenario4$units_of_effort*20)

scenario4_fr <- create_scenario(scenario_df = scenario4, species = DSMscenario::species$FALL_RUN)

# Scenario 5 ---
scenario5 <- filter(scenarios, scenario == 5)
scenario5 %>%
  group_by(watershed) %>%
  summarise(sum(units_of_effort * 20))

scenario5 %>%
  group_by(start_year) %>%
  summarise(sum(units_of_effort) * 20)

sum(scenario5$units_of_effort*20)

scenario5_fr <- create_scenario(scenario_df = scenario5, species = DSMscenario::species$FALL_RUN)

# Scenario 6 ---
scenario6 <- filter(scenarios, scenario == 6)
scenario6 %>%
  group_by(watershed) %>%
  summarise(sum(units_of_effort * 20))

scenario6 %>%
  group_by(start_year) %>%
  summarise(sum(units_of_effort) * 20)

sum(scenario6$units_of_effort*20)

scenario6_fr <- create_scenario(scenario_df = scenario6, species = DSMscenario::species$FALL_RUN)

# Scenario 7 ---
scenario7 <- filter(scenarios, scenario == 7)
scenario7 %>%
  group_by(watershed) %>%
  summarise(sum(units_of_effort * 20))

scenario7 %>%
  group_by(start_year) %>%
  summarise(sum(units_of_effort) * 20)

sum(scenario7$units_of_effort*20)

scenario7_fr <- create_scenario(scenario_df = scenario7, species = DSMscenario::species$FALL_RUN)

# Scenario 8 ---
scenario8_e <-matrix(c(1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
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
                       1,1,2,1,1,2,1,1,2,1,1,2,1,1,2,1,1,2,1,1,
                       NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                       NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                       NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                       NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                       1,2,1,1,2,1,1,2,1,1,2,1,1,2,1,1,2,1,1,2,
                       NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                       NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                       2,1,1,2,1,1,2,1,1,2,1,1,2,1,1,2,1,1,2,1,
                       NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                       NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                       NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                       NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                       NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                       NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                       NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA),
                     ncol=20,byrow=TRUE, dimnames = list(watershed_labels, 1980:1999))

scenario8_d <- matrix(c(3,3,3,3,3,3,3,3,3,3,3,3,5,5,5,5,5,5,5,5,
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
                        3,4,3,3,4,4,4,4,3,4,4,3,4,3,4,4,4,3,3,4,
                        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                        4,3,3,3,3,4,4,3,3,4,3,4,3,3,4,4,4,3,4,3,
                        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                        3,4,4,4,4,3,3,4,3,3,3,4,4,3,3,4,4,3,3,3,
                        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA),
                      ncol=20,byrow=TRUE, dimnames = list(watershed_labels, 1980:1999))

a <- scenario8_e %>%
  as_tibble() %>%
  mutate(watershed = watershed_labels) %>%
  gather(year, effort, -watershed) %>%
  filter(!is.na(effort))

b <- scenario8_d %>%
  as_tibble() %>%
  mutate(watershed = watershed_labels) %>%
  gather(year, decision, -watershed) %>%
  filter(!is.na(decision)) %>%
  arrange(watershed)

scenario8 <- full_join(a, b) %>%
  arrange(watershed) %>%
  select(watershed, action = decision, start_year = year, end_year = year, units_of_effort = effort) %>%
  mutate(scenario = 8, nick_name = "Winter Run")

full_join(a, b) %>%
  arrange(watershed) %>%
  group_by(watershed) %>%
  summarise(sum(effort))

# scenario8 seems off TODO
# Upper Mid	30
# Lower Sac	30
# Lower mid	30
# Upper Sac	10

# Scenario 9 -----
s9_d <- matrix(c(NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                 NA,NA,NA,5,NA,NA,NA,5,NA,NA,NA,5,NA,NA,NA,5,NA,NA,NA,5,
                 3,3,3,NA,3,3,3,NA,3,3,3,NA,3,3,3,NA,3,3,3,NA,
                 NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                 NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                 3,3,3,NA,5,5,5,NA,5,5,5,NA,5,5,5,NA,5,5,5,NA,
                 3,2,3,NA,3,3,3,NA,3,3,3,NA,3,3,3,NA,3,3,3,NA,
                 NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                 NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                 NA,NA,NA,5,NA,NA,NA,5,NA,NA,NA,5,NA,NA,NA,5,NA,NA,NA,5,
                 NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                 NA,NA,NA,3,NA,NA,NA,3,NA,NA,NA,3,NA,NA,NA,3,NA,NA,NA,3,
                 NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                 NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                 NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                 4,4,3,NA,4,3,3,NA,4,3,4,NA,4,4,3,NA,4,3,3,NA,
                 NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                 NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                 NA,NA,NA,5,NA,NA,NA,5,NA,NA,NA,5,NA,NA,NA,5,NA,NA,NA,5,
                 NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                 NA,NA,NA,4,NA,NA,NA,4,NA,NA,NA,4,NA,NA,NA,4,NA,NA,NA,3,
                 NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                 NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                 3,3,4,NA,3,4,3,NA,4,4,4,NA,3,4,4,NA,3,3,4,NA,
                 NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                 NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                 NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                 NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                 NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                 NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                 NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA),
               ncol=20,byrow=TRUE, dimnames = list(watershed_labels, 1980:1999))

scenario9 <- s9_d %>%
  as_tibble() %>%
  mutate(watershed = watershed_labels) %>%
  gather(year, decision, -watershed) %>%
  filter(!is.na(decision)) %>%
  arrange(watershed) %>%
  select(watershed, action = decision, start_year = year, end_year = year) %>%
  mutate(units_of_effort = 1, scenario = 9, nick_name = "Spring Run")

scenario9 %>%
  group_by(watershed) %>%
  summarise(sum(units_of_effort))

# Scenario 10 ----
s10_d <- matrix(c(NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                  NA,NA,5,NA,NA,5,NA,NA,5,NA,NA,5,NA,NA,5,NA,NA,5,NA,NA,
                  NA,NA,3,NA,NA,3,NA,NA,3,NA,NA,3,NA,NA,3,NA,NA,3,NA,NA,
                  NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                  NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                  3,NA,NA,3,NA,NA,3,NA,NA,3,NA,NA,3,NA,NA,3,NA,NA,3,NA,
                  3,NA,NA,3,NA,NA,3,NA,NA,3,NA,NA,3,NA,NA,3,NA,NA,3,NA,
                  NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                  NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                  NA,5,NA,NA,5,NA,NA,5,NA,NA,5,NA,NA,5,NA,NA,5,NA,NA,5,
                  NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                  NA,5,NA,NA,5,NA,NA,5,NA,NA,5,NA,NA,5,NA,NA,5,NA,NA,5,
                  NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                  NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                  NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                  4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,
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
                  NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA),
                ncol=20,byrow=TRUE, dimnames = list(watershed_labels, 1980:1999))

scenario10.2 <- s10_d %>%
  as_tibble() %>%
  mutate(watershed = watershed_labels) %>%
  gather(year, decision, -watershed) %>%
  filter(!is.na(decision)) %>%
  arrange(watershed) %>%
  select(watershed, action = decision, start_year = year, end_year = year) %>%
  mutate(units_of_effort = ifelse(watershed == "Upper-mid Sacramento River", 3, 1),
         scenario = 10.2, nick_name = "Corey Spring 2")

scenario10.2 %>%
  group_by(watershed) %>%
  summarise(total_units_of_effort = sum(units_of_effort))

scenario10.2 %>%
  group_by(start_year) %>%
  summarise(total_units_of_effort = sum(units_of_effort))

scenario10.1 <- s10_d %>%
  as_tibble() %>%
  mutate(watershed = watershed_labels) %>%
  gather(year, decision, -watershed) %>%
  filter(!is.na(decision)) %>%
  arrange(watershed) %>%
  mutate(units_of_effort = ifelse(watershed == "Upper-mid Sacramento River", 3, 1),
         scenario = 10.1, nick_name = "Corey Spring 1", action = 3) %>%
  select(watershed, action, start_year = year, end_year = year, units_of_effort, scenario, nick_name)

scenario10.1 %>%
  group_by(watershed) %>%
  summarise(total_units_of_effort = sum(units_of_effort))

scenario10.1 %>%
  group_by(start_year) %>%
  summarise(total_units_of_effort = sum(units_of_effort))

# Scenario 11 -----
s11 <- matrix(c(3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,
                NA,NA,5,NA,NA,NA,NA,NA,NA,NA,NA,NA,5,NA,NA,NA,5,5,NA,NA,
                NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                NA,NA,NA,5,5,5,5,5,5,5,5,5,NA,5,NA,5,NA,NA,5,5,
                NA,NA,3,NA,NA,NA,3,3,3,3,3,3,NA,3,NA,3,NA,3,3,NA,
                2,2,NA,2,2,2,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,2,
                NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,5,NA,NA,NA,NA,NA,
                NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                4,4,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,5,NA,5,NA,5,NA,NA,NA,
                NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                4,4,NA,NA,4,NA,NA,NA,NA,NA,NA,NA,4,NA,NA,4,4,4,NA,NA,
                NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                NA,NA,NA,NA,NA,NA,3,3,NA,3,NA,3,NA,NA,NA,NA,NA,NA,NA,NA,
                NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                NA,NA,4,4,NA,NA,4,4,4,4,4,4,NA,4,NA,NA,NA,NA,4,4,
                NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                3,3,NA,3,NA,3,NA,NA,3,NA,3,NA,3,NA,3,3,3,NA,3,3,
                NA,NA,NA,NA,NA,4,NA,NA,NA,NA,NA,NA,NA,NA,4,NA,NA,NA,NA,NA,
                5,NA,NA,NA,NA,NA,NA,5,NA,5,NA,5,NA,5,NA,NA,5,5,5,NA,
                NA,NA,5,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,5,NA,NA,
                NA,NA,NA,NA,2,NA,NA,NA,NA,NA,NA,NA,NA,2,NA,NA,NA,NA,NA,NA,
                NA,5,5,4,4,NA,NA,NA,NA,NA,NA,NA,5,NA,5,NA,NA,NA,NA,5,
                NA,NA,NA,NA,NA,3,3,NA,3,NA,3,NA,NA,NA,NA,3,NA,NA,NA,NA,
                NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA),
              ncol=20,byrow=TRUE, dimnames = list(watershed_labels, 1980:1999))

scenario11 <- s11 %>%
  as_tibble() %>%
  mutate(watershed = watershed_labels) %>%
  gather(year, decision, -watershed) %>%
  filter(!is.na(decision)) %>%
  arrange(watershed) %>%
  select(watershed, action = decision, start_year = year, end_year = year) %>%
  mutate(units_of_effort =  1,
         scenario = 11, nick_name = "Diversity Split")

scenario11 %>%
  group_by(watershed) %>%
  summarise(sum(units_of_effort))

scenario11 %>%
  group_by(start_year) %>%
  summarise(sum(units_of_effort))

# Scenario 11 has 120 actions taken TODO
sum(scenario11$units_of_effort)

# Scenario 12 ---
s12 <- matrix(c(3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,
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
                NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                3,3,3,3,2,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,
                3,3,3,3,4,4,4,4,4,3,3,4,4,4,3,4,4,3,4,3,
                NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                5,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,
                NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,
                NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA),
              ncol=20,byrow=TRUE, dimnames = list(watershed_labels, 1980:1999))

scenario12 <- s12 %>%
  as_tibble() %>%
  mutate(watershed = watershed_labels) %>%
  gather(year, decision, -watershed) %>%
  filter(!is.na(decision)) %>%
  arrange(watershed) %>%
  select(watershed, action = decision, start_year = year, end_year = year) %>%
  mutate(units_of_effort =  1,
         scenario = 12, nick_name = "Mike Beakes")

scenario12 %>%
  group_by(watershed) %>%
  summarise(sum(units_of_effort))

scenario12 %>%
  group_by(start_year) %>%
  summarise(sum(units_of_effort))

sum(scenario12$units_of_effort)

# Scenario 13 ---
s13 <- matrix(c(3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,
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
                NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                3,3,3,3,2,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,
                4,3,3,3,4,3,3,4,3,4,3,4,4,3,4,4,4,3,4,3,
                5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,
                NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,
                NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
                NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA),
              ncol=20,byrow=TRUE, dimnames = list(watershed_labels, 1980:1999))

scenario13 <- s13 %>%
  as_tibble() %>%
  mutate(watershed = watershed_labels) %>%
  gather(year, decision, -watershed) %>%
  filter(!is.na(decision)) %>%
  arrange(watershed) %>%
  select(watershed, action = decision, start_year = year, end_year = year) %>%
  mutate(units_of_effort =  1,
         scenario = 13, nick_name = "Robyn2")

scenario13 %>%
  group_by(watershed) %>%
  summarise(sum(units_of_effort))

scenario13 %>%
  group_by(start_year) %>%
  summarise(sum(units_of_effort))

sum(scenario13$units_of_effort)


# combine all scenarios and write to tmp.csv to combine with hand encoded scenarios
bind_rows(scenario8, scenario9, scenario10.1, scenario10.2, scenario11, scenario12, scenario13) %>%
  write_csv('data-raw/tmp.csv')
