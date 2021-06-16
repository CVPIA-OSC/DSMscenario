#' Load Scenario
#' @param scenario_df a dataframe containing scenario information, see details below
#' @param habitat_inputs
#' @param species
#' @details
#' The \code{scenario_df} is a dataframe with each row representing a scenario action.
#' The dataframe must contain the following columns:
#' \itemize{
#'   \item "watershed" - The name or index for a watershed, ex. "Upper Sacramento River" or 1
#'   \item "action" - The action taken represented by the code 1 - 5, ex: 3
#'   \item "start_year"- The simulation year the action begins
#'   \item "end_year" - The simulation year the action ends
#'   \item "units_of_effort" - number of action units taken, ex: .5 or 1
#' }
#' @section Actions and Units of Effort:
#' \itemize{
#'   \item Action 1: Do nothing
#'   \item Action 2: Add 1 acre of spawning habitat
#'   \item Action 3: Add 2 acres of inchannel rearing habitat
#'   \item Action 4: Add 3 acres of floodplain rearing habitat
#'   \item Action 5: Increase rearing survival by 5%
#'
#' }
#' @examples
# scenario_df <- data.frame(watershed = c("Upper Sacramento River", "Upper Sacramento River",
#                         "American River", "Feather River", "Lower-mid Sacramento River",
#                         "Battle Creek", "Butte Creek", "Deer Creek", "Stanislaus River"),
#           action = c(3, 3, 3, 3, 3, 3, 3, 3, 3),
#           start_year = c(1980, 1990, 1980, 1980, 1980, 1990, 1990, 1990, 1990),
#           end_year = c(1989, 1999, 1989, 1989, 1989, 1999, 1999, 1999, 1999),
#           units_of_effort = c(2, 1, 1, 1, 1, 1, 1, 1, 1))
#'
#' load_scenario(scenario_df, )
#' @export
load_scenario <- function(scenario_df, habitat_inputs, species = c("fr", "wr", "sr", "st", "lfr")) {

  species <- match.arg(species)

  spawn_theoretical_habitat_max <- switch(species,
                                          "fr" = DSMscenario::max_spawn_area$fall,
                                          "wr" = DSMscenario::max_spawn_area$winter,
                                          "sr" = DSMscenario::max_spawn_area$spring,
                                          "st" = DSMscenario::max_spawn_area$steelhead,
                                          "lfr" = DSMscenario::max_spawn_area$latefall)

  rear_theoretical_habitat_max <- switch(species,
                                         "fr" = DSMscenario::max_rear_area$fall,
                                         "wr" = DSMscenario::max_rear_area$winter,
                                         "sr" = DSMscenario::max_rear_area$spring,
                                         "st" = DSMscenario::max_rear_area$steelhead,
                                         "lfr" = DSMscenario::max_rear_area$latefall)
  one_acre <- 4046.86
  two_acres <- 8093.72
  three_acres <- 12140.59

  actions <- get_action_matrices(scenario_df)
  decay <- decay_amount_matrices()

  spawning_habitat <- modify_habitat(habitat = habitat_inputs$spawning_habitat,
                                     action_units = actions$spawn,
                                     amount = one_acre,
                                     decay = decay$spawn,
                                     years = 22,
                                     theoretical_max = spawn_theoretical_habitat_max)

  inchannel_habitat_fry <- modify_habitat(habitat = habitat_inputs$inchannel_habitat_fry,
                                          action_units = actions$inchannel,
                                          amount = two_acres,
                                          decay = decay$rear,
                                          theoretical_max = rear_theoretical_habitat_max)

  inchannel_habitat_juvenile <- modify_habitat(habitat = habitat_inputs$inchannel_habitat_juvenile,
                                               action_units = actions$inchannel,
                                               amount = two_acres,
                                               decay = decay$rear,
                                               theoretical_max = rear_theoretical_habitat_max)

  floodplain_habitat <- modify_floodplain_habitat(habitat = habitat_inputs$floodplain_habitat,
                                                  weeks_flooded = habitat_inputs$weeks_flooded,
                                                  action_units = actions$floodplain,
                                                  amount = three_acres)

  # how should we modify weeks_flooded when floodplain habitat is added
  # which months do we add floodplain when added

  return(list(spawning_habitat = spawning_habitat,
              inchannel_habitat_fry = inchannel_habitat_fry,
              inchannel_habitat_juvenile = inchannel_habitat_juvenile,
              floodplain_habitat = floodplain_habitat$habitat,
              weeks_flooded = floodplain_habitat$weeks_flooded,
              survival_adjustment = actions$survival))
}

#' Modify Inchannel Habitat
#' @description Change amount of habitat
#' @param habitat
#' @param action_units
#' @param amount
#' @param decay
modify_habitat <- function(habitat, action_units, amount, decay = NULL, years = 21, theoretical_max = NULL) {

  amount_matrix <- matrix(add_parital_controllability(amount, 31*years), nrow = 31)

  cumulative_amount_matrix <- t(apply(amount_matrix*action_units, MARGIN = 1, cumsum))
  # cumulative_decay_matrix <- t(apply(as.numeric(!action_units)*decay, MARGIN = 1, cumprod))
  # decay_amount <- replace(cumulative_decay_matrix, which(cumulative_decay_matrix == 0), 1)

  annual_decay <- as.numeric(!action_units)*decay
  for (i in 1:years) {
    annual_decay[i, annual_decay[i,] != 0] <- cumprod(annual_decay[i, annual_decay[i,] != 0])
  }
  cumulative_decay_matrix <- replace(annual_decay, annual_decay == 0, 1)

  # for each month within a year, add or degrade same volume of habitat
  for (i in 1:12) {
    # add habitat by number of units
    habitat[ , i, ] <- habitat[ , i, ] + cumulative_amount_matrix
    # degrade habitat if none was added
    habitat[ , i, ] <- habitat[ , i, ] * cumulative_decay_matrix
  }

  # Do not let habitat amount exceed theoretical habitat maximum for spawn and inchannel rearing
  habitat <- pmin(habitat, theoretical_max)

  return(habitat)
}

#' Modify Floodplain Habitat
#' @param habitat
#' @param weeks_flooded
#' @param action_units
#' @param amount
modify_floodplain_habitat <- function(habitat, weeks_flooded, action_units, amount) {
  # partial controllability of building 3 acres
  amount_matrix <- matrix(add_parital_controllability(amount, 31*21), nrow = 31)

  # acres built times unit of effort with acres built accumulating
  cumulative_amount_matrix <- t(apply(amount_matrix*action_units, MARGIN = 1, cumsum))

  for (year in 1:21) {
    # floodplain built activated 2 out of 3 years
    if (rbinom(1, 1, 0.67)) {
      # floodplain active 2 months between 1-4
      first_active_month <- sample(1:3, 1)
      active_months <- c(first_active_month, first_active_month + 1)
      habitat[ , active_months, year] <- habitat[ , active_months, year] + cumulative_amount_matrix[ , year]
      weeks_flooded[ , active_months, year] <- pmax(weeks_flooded[ , active_months, year], 2)
    }
  }

  return(list(habitat = habitat, weeks_flooded = weeks_flooded))

}

#' Add Partial Controllability to Habitat Amount
#' Randomly increase or decrease amount of habitat created
#' @param sqm square meter of base habitat amount
#' @param n
#' @noRd
add_parital_controllability <- function(sqm, n = 1) {
  sqm * pmin(pmax(rgamma(n, 44.44444, scale = 0.02250), 0.5), 1.5)
}

#' Decay Matrices
#'
decay_amount_matrices <- function() {

  spawn_decay_amount <- t(sapply(1:31, function(index) {
    runif(22, min = DSMscenario::spawn_decay_rate[index], max = 1)
  }))

  rear_decay_amount <- t(sapply(1:31, function(index) {
    runif(21, min = DSMscenario::rear_decay_rate[index], max = 1)
  }))

  # remove decay from non-regulated tribs and Bypasses and San Joaquin River
  tribs_with_no_decay <-
    !DSMscenario::regulated_watersheds |
    (DSMscenario::watershed_groups > 7)

  spawn_decay_amount[tribs_with_no_decay, ] <- 1
  rear_decay_amount[tribs_with_no_decay, ] <- 1

  return(list(spawn = spawn_decay_amount, rear = rear_decay_amount))

}

#' Get Action Matrices
#' @param scenario_df
get_action_matrices <- function(scenario_df) {

  spawn_actions <- get_action_units(scenario_df, action_type = 2)
  ic_actions <- get_action_units(scenario_df, action_type = 3)
  flood_actions <- get_action_units(scenario_df, action_type = 4)
  survival_actions <- get_action_units(scenario_df, action_type = 5)

  return(list(spawn = spawn_actions, inchannel = ic_actions,
              floodplain = flood_actions, survival = survival_actions))
}

#' Get Action Units
#' @param scenario_df
#' @param action_type
get_action_units <- function(scenario_df, action_type) {

  actions <- subset(scenario_df, action == action_type)
  watersheds <- purrr::map_df(seq_len(nrow(actions)), function(index) {
    row <- actions[index, ]
    data.frame(
      year = seq(row$start_year, row$end_year),
      watershed = row$watershed,
      units_of_effort = row$units_of_effort
    )
  })

  start_year = ifelse(action_type == 2, 1979, 1980)

  action_units <- dplyr::bind_rows(
    expand.grid(
      year = start_year:2000,
      watershed = DSMscenario::watershed_labels,
      units_of_effort = 0
    ),
    watersheds) %>%
    dplyr::group_by(year, watershed) %>%
    dplyr::summarise(units_of_effort = sum(units_of_effort)) %>%
    dplyr::ungroup() %>%
    tidyr::spread(year, units_of_effort) %>%
    dplyr::mutate(watershed = factor(watershed, levels = DSMscenario::watershed_labels)) %>%
    dplyr::arrange(watershed) %>%
    dplyr::select(-watershed) %>%
    as.matrix()

  row.names(action_units) <- DSMscenario::watershed_labels

  return(action_units)

}


