library(microbenchmark)
library(DSMscenario)
library(fallRunDSM)

model_inputs <- fallRunDSM::load_baseline_data()

habitat_inputs = list(spawning_habitat = model_inputs$spawning_habitat,
                      inchannel_habitat_fry = model_inputs$inchannel_habitat_fry,
                      inchannel_habitat_juvenile = model_inputs$inchannel_habitat_juvenile,
                      floodplain_habitat = model_inputs$floodplain_habitat)

scenario <- data.frame(watershed = "Upper Sacramento River",
                       action = c(2, 3, 4, 5),
                       start_year = 1980,
                       end_year = 1999,
                       units_of_effort = 1)

results <-
  microbenchmark(
    a = load_scenario(scenario, habitat_inputs),
    b = load_baseline_data(), times = 50)

