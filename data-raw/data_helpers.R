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
