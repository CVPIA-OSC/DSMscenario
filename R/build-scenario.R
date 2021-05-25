#' Add habitat
#' @param watershed watershed name or number 1:31
#' @param amount square meters
#' @param years vector of characters 1980-1999
#' @export
add_habitat <- function(base, watershed, amount, years) {
  if (is.numeric(years)) {
    years <- as.character(years)
  }

  base[watershed, , years] <- base[watershed, , years] + amount
  # compare to max, pmin with maxRearHab$max_suit_sqm[watershed, ]

  return(base)

}

#' Increase Survival
#' @param watershed watershed name or number 1:31
#' @param amount 1 unit of effort is a 5\% increase, default 1 unit is 1.05
#' @param years vector of characters 1980-1999
#' @export
increase_survial_scalar <- function(base, watershed, amount = 1.05, years) {
  if (is.numeric(years)) {
    years <- as.character(years)
  }

  base[watershed, years] <- amount
  # in model - make sure scalar multiplication is not greater than 1 survival

  return(base)

}

#' Add Noise to Habitat Amount
#' @param sqm square meter of base habitat amount
#' @noRd
add_noise <- function(sqm) {sqm * min(max(rgamma(1,44.44444,scale=0.02250),0.5),1.5)}

#' Create scenario
#' @param scenario_df a dataframe containing scenario information, see details below
#' @param species either "fr", "wr", "sr" for fall run, winter run, or spring run respectively
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
#'   \item Action 4: Add 2 acres of floodplain rearing habitat
#'   \item Action 5: Increase rearing survival by 5%
#'
#' }
#' @examples
#' scenario_df <- data.frame(watershed = c("Upper Sacramento River", "Upper Sacramento River",
#'                         "American River", "Feather River", "Lower-mid Sacramento River",
#'                         "Battle Creek", "Butte Creek", "Deer Creek", "Stanislaus River"),
#'           action = c(3, 3, 3, 3, 3, 3, 3, 3, 3),
#'           start_year = c(1980, 1990, 1980, 1980, 1980, 1990, 1990, 1990, 1990),
#'           end_year = c(1989, 1999, 1989, 1989, 1989, 1999, 1999, 1999, 1999),
#'           units_of_effort = c(2, 1, 1, 1, 1, 1, 1, 1, 1))
#'
#' create_scenario(scenario_df, species = "fr")
#' @export
create_scenario <- function(scenario_df, species = c('fr', 'wr', 'sr')) {

  species <- match.arg(species)

  one_acre <- 4046.86
  two_acres <- 8093.72

  model_inputs <- switch(species,
         "fr" = fallRunDSM::load_baseline_data(),
         "wr" = winterRunDSM::load_baseline_data(),
         "sr" = springRunDSM::load_baseline_data())

  scenario_spawn <- model_inputs$spawning_habitat
  scenario_fry <- model_inputs$inchannel_habitat_fry
  scenario_juv <- model_inputs$inchannel_habitat_juvenile
  scenario_fp <- model_inputs$floodplain_habitat
  # weeks_flooded <- DSMhabitat::weeks_flooded TODO how to adjust

  scenario_survival_scalar <- matrix(1, nrow = 31, ncol = 20,
                                     dimnames = list(DSMscenario::watershed_labels, 1980:1999))

  purrr::pwalk(scenario_df,
               function(watershed, action, start_year, end_year, units_of_effort, ...) {
                 # action == 1 - do nothing
                 if (action == 2) {
                   # action == 2 - add spawning habitat
                   scenario_spawn <- add_habitat(scenario_spawn, watershed,
                                                 amount = add_noise(one_acre*units_of_effort),
                                                 years = as.character(start_year:end_year))
                 } else if (action == 3) {
                   # action == 3 - add inchannel rearing habitat
                   scenario_fry <- add_habitat(scenario_fry, watershed,
                                               amount = add_noise(two_acres*units_of_effort),
                                               years = as.character(start_year:end_year))
                   scenario_juv <- add_habitat(scenario_juv, watershed,
                                               amount = add_noise(two_acres*units_of_effort),
                                               years = as.character(start_year:end_year))
                 } else if (action == 4) {
                   # action == 4 - add floodplain rearing habitat
                   scenario_fp <- add_habitat(scenario_fp, watershed,
                                              amount = add_noise(two_acres*units_of_effort),
                                              years = as.character(start_year:end_year))
                 } else if (action == 5) {
                   # action == 5 - increase survival by 5%
                   scenario_survival_scalar <- increase_survial_scalar(scenario_survival_scalar, watershed,
                                                                       years = as.character(start_year:end_year))
                 }

               })

  model_inputs$spawning_habitat <- scenario_spawn
  model_inputs$inchannel_habitat_fry <- scenario_fry
  model_inputs$inchannel_habitat_juvenile <- scenario_juv
  model_inputs$floodplain_habitat <- scenario_fp
  model_inputs$survival_scalar <- scenario_survival_scalar

  return(model_inputs)

}





