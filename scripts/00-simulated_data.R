# Purpose: Simulate the dataset of major crimes in Toronto
# Author: Boxuan Yi
# Email: boxuan.yi@mail.utoronto.ca
# Date: 17 January 2024
# There are four simulations

install.packages('opendatatoronto')
install.packages('dplyr')
install.packages('tidyverse')
install.packages('janitor')
install.packages('leaflet')
install.packages('ggplot2')
install.packages('knitr')
install.packages('here')

library(tidyverse)
library(janitor)
library(knitr)

# Plan
cat("![My plan](project/scripts/plan.png)\n")


# Simulate
# Simulation for the number of crimes in each year (2014-2023),
# and the month with the most crimes in each year
set.seed(7)
months <- c("January", "February", "March", "April", "May", "June", "July",
            "August", "September", "October", "November", "December")
simulated_data1 <-
  tibble(
    "Year" = 2014:2023,
    "Number of Crimes" = runif(n = 10, min = 0, max = 10000),
    "Month" = sample(months, 10, replace = TRUE)
  )
simulated_data1

# Simulation for the number of crimes classified in major crime types
set.seed(7)
simulated_data2 <-
  tibble(
    "Year" = 2014:2023,
    "Number of Assault" = runif(n = 10, min = 0, max = 2000),
    "Number of Auto Theft" = runif(n = 10, min = 0, max = 2000),
    "Number of Break and Enter" = runif(n = 10, min = 0, max = 2000),
    "Number of Robbery" = runif(n = 10, min = 0, max = 2000),
    "Number of Theft Over" = runif(n = 10, min = 0, max = 2000)
  )
simulated_data2

# Simulation for the number of crimes classified in major crime types
set.seed(7)
simulated_data3 <-
  tibble(
    "Year" = 2014:2023,
    "Etobicoke" = runif(n = 10, min = 0, max = 1000),
    "Etobicoke-York" = runif(n = 10, min = 0, max = 1000),
    "North York" = runif(n = 10, min = 0, max = 1000),
    "Other" = runif(n = 10, min = 0, max = 1000),
    "Scarborough" = runif(n = 10, min = 0, max = 1000),
    "Toronto-East York" = runif(n = 10, min = 0, max = 1000)
  )
simulated_data3

# Simulation for the number of crimes classified in major crime types
set.seed(7)
simulated_data4 <-
  tibble(
    "Hour" = 0:23,
    "Etobicoke" = runif(n = 24, min = 0, max = 1000),
  )
simulated_data4
