  decay <- decay_amount_matrices()
  upper_sac_index <- 1
  antelope_index <- 2
  san_joaq_index <- 31
  year_index_1 <- 1
  year_index_2 <- 20

test_that("spawn decay works", {
  expect_equal(decay$spawn[antelope_index, year_index_1], 1)
  expect_equal(decay$spawn[antelope_index, year_index_2], 1)

  expect_equal(decay$spawn[san_joaq_index, year_index_1], 1)
  expect_equal(decay$spawn[san_joaq_index, year_index_2], 1)
  # decay rate is runif(min = watershed spawn decay rate, max = 1)
  expect_gte(decay$spawn[upper_sac_index, year_index_1],
             DSMscenario::spawn_decay_rate[["Upper Sacramento River"]])
  expect_lte(decay$spawn[upper_sac_index, year_index_1], 1)

  expect_gte(decay$spawn[upper_sac_index, year_index_2],
             DSMscenario::spawn_decay_rate[["Upper Sacramento River"]])
  expect_lte(decay$spawn[upper_sac_index, year_index_2], 1)
})

test_that("rear decay works", {
  expect_equal(decay$rear[antelope_index, year_index_1], 1)
  expect_equal(decay$rear[antelope_index, year_index_2], 1)

  expect_equal(decay$rear[san_joaq_index, year_index_1], 1)
  expect_equal(decay$rear[san_joaq_index, year_index_2], 1)

  # decay rate is runif(min = watershed rear decay rate, max = 1)
  expect_gte(decay$rear[upper_sac_index, year_index_1],
             DSMscenario::rear_decay_rate[["Upper Sacramento River"]])
  expect_lte(decay$rear[upper_sac_index, year_index_1], 1)

  expect_gte(decay$rear[upper_sac_index, year_index_2],
             DSMscenario::rear_decay_rate[["Upper Sacramento River"]])
  expect_lte(decay$rear[upper_sac_index, year_index_2], 1)
})
