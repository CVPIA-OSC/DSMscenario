#' Watershed Labels
#' @description An ordered vector of watershed names included in the CVPIA SIT's
#'     Decision Support Models
#' @format NULL
"watershed_labels"

#' Decay Rates
#' @description An ordered vector of minimum decay rate for each watershed
#' @name decay_rate
NULL

#' @rdname decay_rate
#' @format NULL
"spawn_decay_rate"

#' @rdname decay_rate
#' @format NULL
"rear_decay_rate"

#' SIT Scenarios
#' @description CVPIA SIT's scenario dataframes for scenarios 1-7 and no action
#' @usage
#' DSMscenario::scenarios$NO_ACTION
#' DSMscenario::scenarios$ONE
#' DSMscenario::scenarios$TWO
#' DSMscenario::scenarios$THREE
#' DSMscenario::scenarios$FOUR
#' DSMscenario::scenarios$FIVE
#' DSMscenario::scenarios$SIX
#' DSMscenario::scenarios$SEVEN
#' @examples
#' fall_run_seeds <- fallRunDSM::fall_run_model(mode = "seed")
#' fallRunDSM::fall_run_model(scenario = DSMscenario::scenarios$ONE,
#'                            mode = "simulate",
#'                            seeds = fall_run_seeds)
"scenarios"

#' SIT Watershed Groupings
#' @description CVPIA SIT's watershed groupings
"watershed_groups"

#' Regulated Watersheds
#' @description An ordered vector of boolean values, 1 represents a major dam
#'   on the watershed.
"regulated_watersheds"

#' Regulated Watersheds
#' @description A helper list object for setting the species value when running \code{load_scenario}
#' @usage
#' DSMscenario::species$FALL_RUN
#' DSMscenario::species$LATE_FALL_RUN
#' DSMscenario::species$WINTER_RUN
#' DSMscenario::species$SPRING_RUN
#' DSMscenario::species$STEELHEAD
#' @examples
#' habitats <- list(
#'   spawning_habitat = fallRunDSM::params$spawning_habitat,
#'   inchannel_habitat_fry = fallRunDSM::params$inchannel_habitat_fry,
#'   inchannel_habitat_juvenile = fallRunDSM::params$inchannel_habitat_juvenile,
#'   floodplain_habitat = fallRunDSM::params$floodplain_habitat,
#'   weeks_flooded = fallRunDSM::params$weeks_flooded
#' )
#'
#' scenario_df <- data.frame(watershed = c("Upper Sacramento River",
#'                                         "Upper Sacramento River",
#'                                         "American River", "Feather River",
#'                                         "Lower-mid Sacramento River",
#'                                         "Battle Creek", "Butte Creek",
#'                                         "Deer Creek", "Stanislaus River"),
#'                           action = c(3, 3, 3, 3, 3, 3, 3, 3, 3),
#'                           start_year = c(1980, 1990, 1980, 1980, 1980, 1990,
#'                                          1990, 1990, 1990),
#'                           end_year = c(1989, 1999, 1989, 1989, 1989, 1999,
#'                                          1999, 1999, 1999),
#'                           units_of_effort = c(2, 1, 1, 1, 1, 1, 1, 1, 1))
#'
#' scenario <- load_scenario(scenario_df = scenario_df,
#'                           species = DSMscenario::species$FALL_RUN,
#'                           habitat_inputs = habitats)
"species"


