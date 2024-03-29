% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/build-scenario.R
\name{load_scenario}
\alias{load_scenario}
\title{Load Scenario}
\usage{
load_scenario(
  scenario,
  habitat_inputs,
  species = c("fr", "wr", "sr", "st", "lfr"),
  spawn_decay_rate = DSMscenario::spawn_decay_rate,
  rear_decay_rate = DSMscenario::rear_decay_rate,
  spawn_decay_multiplier = NULL,
  stochastic = TRUE
)
}
\arguments{
\item{scenario}{a list containing scenario information, see details below}

\item{habitat_inputs}{a list with spawning habitat, inchannel fry and juvenile rearing habitat,
floodplain rearing habitat, and weeks flooded matrices from the lifecycle model
"params" data object. See the example for more details.}

\item{species}{provide \code{"fr"}, \code{"lfr"}, \code{"wr"}, \code{"sr"}, or \code{"st"} for fall run, late-fall run,
winter run, spring run, or steelhead respectively to designate which \code{params} data object
to be modified. For example, supply \code{"fr"} if running the \code{fallRunDSM::fall_run_model}.}

\item{spawn_decay_rate}{length 31 vector of 1 - spawning decay rate estimates}

\item{rear_decay_rate}{length 31 vector of 1 - rearing decay rate estimates}

\item{stochastic}{boolean, TRUE for creating scenarios with stochasticity}
}
\description{
Modify baseline model inputs based on a set of actions
}
\details{
A scenario is a list of 31 by 20 matrices with each value representing the units
of effort to apply in a tributarty in a given year for a action type.

The scenario list should be formatted like this:

\code{list(spawn = matrix(), inchannel = matrix(), floodplain = matrix(), survival = matrix())}

A scenario can also include a boolean vector named \code{no_decay} if the user
desires to exclude a watershed from spawning and rearing habitat decay.
}
\examples{
scenario_df <- dplyr::tibble(watershed = "Lower Sacramento River",
                      action = 3,
                      start_year = 1980,
                      end_year = 1999,
                      units_of_effort = 1)
no_decay_alt <- watershed_labels \%in\% c("Clear Creek", "Butte Creek", "Upper Sacramento River")
names(no_decay_alt) <- watershed_labels
custom_scenario <- get_action_matrices(scenario_df)
custom_scenario$no_decay <- no_decay_alt

habitats <- list(
  spawning_habitat = fallRunDSM::params$spawning_habitat,
  inchannel_habitat_fry = fallRunDSM::params$inchannel_habitat_fry,
  inchannel_habitat_juvenile = fallRunDSM::params$inchannel_habitat_juvenile,
  floodplain_habitat = fallRunDSM::params$floodplain_habitat,
  weeks_flooded = fallRunDSM::params$weeks_flooded
)

scenario_custom <- load_scenario(scenario = custom_scenario,
                                 species = DSMscenario::species$FALL_RUN,
                                 habitat_inputs = habitats)

scenario_one <- load_scenario(scenario = DSMscenario::scenarios$ONE,
                              species = DSMscenario::species$FALL_RUN,
                              habitat_inputs = habitats)
}
