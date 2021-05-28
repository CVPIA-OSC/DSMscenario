library(tidyverse)
library(stringr)

groupings <- read_csv('data-raw/Grouping.csv')

glimpse(groupings)
groupings %>%
  filter(grp == 1)

groupings %>%
  group_by(grp) %>%
  summarise(text = paste(watershed, collapse = ', '))

groupings$grp %>% table
View(groupings)

pp <- read_csv('data-raw/FP_zero_hab_degrade_policies_Mark_FP_rule.csv')
glimpse(pp)
View(pp)
action_labels <- c("Do nothing", "Add spawning habitat", "Add rearing habitat", "Add floodplain habitat", "Increase survival by 0.5%")

# annual monthly mean smallest size class survival rate
list2env(fallRunDSM::load_baseline_data(), .GlobalEnv)
..params <- fallRunDSM::params

size_small_mean_surv <- purrr::map_dfc(1:20, function(year) {
  purrr::map2_dfc(year, 1:8, function(year, month) {
    get_rearing_survival_rates(year, month, scenario = NULL,
                               ..surv_juv_rear_int= ..params$..surv_juv_rear_int,
                               ..surv_juv_rear_contact_points= ..params$..surv_juv_rear_contact_points,
                               ..surv_juv_rear_prop_diversions= ..params$..surv_juv_rear_prop_diversions,
                               ..surv_juv_rear_total_diversions= ..params$..surv_juv_rear_total_diversions,
                               ..surv_juv_bypass_int = ..params$..surv_juv_bypass_int,
                               ..surv_juv_delta_int = ..params$..surv_juv_delta_int,
                               ..surv_juv_delta_contact_points = ..params$..surv_juv_delta_contact_points,
                               ..surv_juv_delta_total_diverted = ..params$..surv_juv_delta_total_diverted)$inchannel[,1]
  }) %>% as.matrix() %>% rowMeans()
}) %>%
  set_names(1980:1999) %>%
  mutate(watershed = DSMscenario::watershed_labels) %>%
  gather(year, mean_survival, -watershed)

# female spawners - number of redds rolling mean last 5 years
# spawn habitat - min annual amount within months 10-12
# rearing habitat - annual mean habitat (fry months 1-3, juv months 4-8)
