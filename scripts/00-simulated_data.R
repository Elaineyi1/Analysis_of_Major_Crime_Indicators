# Purpose: Simulate the dataset of major crimes in Toronto
# Author: Boxuan Yi
# Email: boxuan.yi@mail.utoronto.ca
# Date: 22 January 2024
# There are four simulations

# Install all the packages I need
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
# Simulation for the number of crimes in each year (2014-2023), and the month with the most crimes in each year
# It gives a table with 10 rows, and 3 variables: Year (2014-2023), Number of Crimes and Month with the most crimes each year.
# The number of crimes is randomly chosen using uniform distribution from 0 to 10000.
# Month is randomly chosen 10 times with replacement
set.seed(7)
months <- c("January", "February", "March", "April", "May", "June", "July",
            "August", "September", "October", "November", "December")
simulated_data1 <-
  tibble(
    "Year" = 2014:2023,
    "Number of Crimes" = runif(n = 10, min = 0, max = 10000),
    "Month with the most crimes" = sample(months, 10, replace = TRUE)
  ) |> kable()
simulated_data1

# Simulation for the number of crimes classified in major crime types
# It gives a table with years (2014 to 2023) and numbers of crimes for 5 types of crime
# Numbers of crimes are randomly chosen using uniform distribution from 0 to 2000.
set.seed(7)
simulated_data2 <-
  tibble(
    "Year" = 2014:2023,
    "Number of Assault" = runif(n = 10, min = 0, max = 2000),
    "Number of Auto Theft" = runif(n = 10, min = 0, max = 2000),
    "Number of Break and Enter" = runif(n = 10, min = 0, max = 2000),
    "Number of Robbery" = runif(n = 10, min = 0, max = 2000),
    "Number of Theft Over" = runif(n = 10, min = 0, max = 2000)
  ) |> kable()
simulated_data2

# Simulation for the number of crimes classified in major crime types
# It gives a table with years (2014 to 2023) and numbers of crimes for 6 different regions
# Numbers of crimes are randomly chosen using uniform distribution from 0 to 1000.
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
  ) |> kable()
simulated_data3

# Simulation for the number of crimes classified in major crime types
# It gives a table with years (2014 to 2023) and numbers of crimes in 24 hours
# Numbers of crimes are randomly chosen using uniform distribution from 0 to 1000.
set.seed(7)
simulated_data4 <-
  tibble(
    "Hour" = 0:23,
    "Number of Crimes in this Hour" = runif(n = 24, min = 0, max = 1000),
  ) |> kable()
simulated_data4
