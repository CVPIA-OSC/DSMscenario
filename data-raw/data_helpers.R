watershed_labels <- c("Upper Sacramento River", "Antelope Creek", "Battle Creek",
                      "Bear Creek", "Big Chico Creek", "Butte Creek", "Clear Creek",
                      "Cottonwood Creek", "Cow Creek", "Deer Creek", "Elder Creek",
                      "Mill Creek", "Paynes Creek", "Stony Creek", "Thomes Creek",
                      "Upper-mid Sacramento River", "Sutter Bypass", "Bear River",
                      "Feather River", "Yuba River", "Lower-mid Sacramento River",
                      "Yolo Bypass", "American River", "Lower Sacramento River", "Calaveras River",
                      "Cosumnes River", "Mokelumne River", "Merced River", "Stanislaus River",
                      "Tuolumne River", "San Joaquin River")
usethis::use_data(watershed_labels)

species <- list(FALL_RUN = "fr", WINTER_RUN = "wr", SPRING_RUN = "sr")
usethis::use_data(species)
# .98 - (1 - .98)
max_decay_rates <- read_csv('data-raw/Grouping.csv') %>%
  mutate(
    spawn_decay_rate_max = case_when(
      grp == 1 ~ 0.973647181 - (1 - 0.973647181),
      grp == 2 ~ 0.994949237 - (1 - 0.994949237),
      grp == 3 ~ 0.994949237 - (1 - 0.994949237),
      grp == 4 ~ 0.979148362 - (1 - 0.979148362),
      grp == 5 ~ 0.962256359 - (1 - 0.962256359),
      TRUE ~ 0.989793782 - (1 - 0.989793782)),
    rear_decay_rate_max = case_when(
      grp == 1 ~ 0.987175243 - (1 - 0.987175243),
      grp == 2 ~ 0.997487405 - (1 - 0.997487405),
      grp == 3 ~ 0.997487405 - (1 - 0.997487405),
      grp == 4 ~ 0.989793782 - (1 - 0.989793782),
      grp == 5 ~ 0.981853233 - (1 - 0.981853233),
      TRUE ~ 0.994949237 - (1 - 0.994949237)),
  ) %>%
  select(watershed, spawn_decay_rate_max, rear_decay_rate_max)

spawn_decay_rate <- max_decay_rates$spawn_decay_rate_max
names(spawn_decay_rate) <- watershed_labels

rear_decay_rate <- max_decay_rates$rear_decay_rate_max
names(rear_decay_rate) <- watershed_labels
usethis::use_data(spawn_decay_rate, overwrite = TRUE)
usethis::use_data(rear_decay_rate, overwrite = TRUE)
