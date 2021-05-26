two_acres <- 8093.72

test_that("increase scalar survival works", {
  # expect_equal(2 * 2, 4)
  scenario_survival_scalar <- matrix(1, nrow = 31, ncol = 20,
                                     dimnames = list(DSMscenario::watershed_labels, 1980:1999))

  scenario_survival_scalar1 <- increase_survial_scalar(scenario_survival_scalar,
                                                       watershed = "Clear Creek",
                                                       years = 1980:1982)

  scenario_survival_scalar2 <- increase_survial_scalar(scenario_survival_scalar,
                                                       watershed = 7,
                                                       years = as.character(1980:1982))
  expect_identical(scenario_survival_scalar1, scenario_survival_scalar2)

  expect_equal(scenario_survival_scalar1["Clear Creek", "1980"], 1.05)
  expect_equal(scenario_survival_scalar2[7, "1980"], 1.05)
  expect_equal(scenario_survival_scalar2[7, "1981"], 1.05)
  expect_equal(scenario_survival_scalar2[7, "1982"], 1.05)
  expect_equal(scenario_survival_scalar2[7, "1983"], 1)
})

test_that("add habitat works", {
  fry <- DSMhabitat::fr_fry
  juv <- DSMhabitat::fr_juv

  fry1 <- add_habitat(fry, watershed = "Butte Creek", amount = two_acres, years = 1990:1999)
  fry2 <- add_habitat(fry, watershed = c("Antelope Creek", "Battle Creek"),
                      amount = two_acres, years = 1990:1999)
  fry3 <- add_habitat(fry, watershed = 7:9,
                      amount = two_acres, years = as.character(1990:1999))

  expect_equal(fry["Butte Creek", ,as.character(1990:1999)] + two_acres,
               fry1["Butte Creek", ,as.character(1990:1999)])
  expect_equal(fry[c("Antelope Creek", "Battle Creek"), ,as.character(1990:1999)] + two_acres,
               fry2[c("Antelope Creek", "Battle Creek"), ,as.character(1990:1999)])
  expect_equal(fry[7:9, ,as.character(1990:1999)] + two_acres,
               fry3[7:9, ,as.character(1990:1999)])
  expect_equal(fry["Butte Creek", ,as.character(1980:1989)],
               fry1["Butte Creek", ,as.character(1980:1989)])
  expect_equal(fry[c("Antelope Creek", "Battle Creek"), ,as.character(1980:1989)],
               fry2[c("Antelope Creek", "Battle Creek"), ,as.character(1980:1989)])
  expect_equal(fry[7:9, ,as.character(1980:1989)],
               fry3[7:9, ,as.character(1980:1989)])

})

test_that("add noise works", {
  amount <- add_noise(two_acres)
  expect_lte(amount, 1.5*two_acres)
  expect_gte(amount, 0.5*two_acres)
})

test_that("create scenario works", {
  scenario_list <- list(watershed = "Clear Creek", action = 3,
                        start_year = 1980, end_year = 1989,
                        units_of_effort = 1)
  fr_inputs <- create_scenario(scenario_list, DSMscenario::species$FALL_RUN)

  expect_equal(
    fr_inputs$inchannel_habitat_fry["Clear Creek", 1, "1990"],
      DSMhabitat::fr_fry["Clear Creek", 1, "1990"]
  )

  expect_false(
    fr_inputs$inchannel_habitat_fry["Clear Creek", 1, "1980"] ==
      DSMhabitat::fr_fry["Clear Creek", 1, "1980"]
    )

  expect_lte(
    fr_inputs$inchannel_habitat_fry["Clear Creek", 1, "1980"] -
      (DSMhabitat::fr_fry["Clear Creek", 1, "1980"] + two_acres),
    two_acres * 0.5)

  expect_gte(
    fr_inputs$inchannel_habitat_fry["Clear Creek", 1, "1980"] -
      (DSMhabitat::fr_fry["Clear Creek", 1, "1980"] + two_acres),
    two_acres * -0.5)

})

test_that('piping with add_habitat works', {
  modified <- DSMhabitat::fr_fry %>%
    add_habitat(watershed = "Clear Creek", amount = two_acres, years = 1980:1989) %>%
    add_habitat(watershed = "Clear Creek", amount = two_acres*2, years = 1990:1999)

  fr_fry <- DSMhabitat::fr_fry
  fr_fry["Clear Creek", , as.character(1980:1989)] <-
    DSMhabitat::fr_fry["Clear Creek", , as.character(1980:1989)] + two_acres
  fr_fry["Clear Creek", , as.character(1990:1999)] <-
    DSMhabitat::fr_fry["Clear Creek", , as.character(1990:1999)] + (two_acres*2)

  expect_equal(modified, fr_fry)

})
