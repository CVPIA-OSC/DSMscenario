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
