# Acquire
# Purpose: Download and save the actual data on major crimes that reported in Toronto 
# from 2014 to 2023
# Author: Boxuan Yi
# Email: boxuan.yi@mail.utoronto.ca
# Date: 22 January 2024
# Prerequisites: Know where to get major crimes data.
# I will use MCI as an abbreviation of Major Crime Indicator

library(opendatatoronto)
library(dplyr)
library(tidyverse)
library(here)
library(janitor)

# Get package and all resources for this package
package <- show_package("major-crime-indicators")
resources <- list_package_resources("major-crime-indicators")
datastore_resources <- filter(resources, tolower(format) %in% c('csv', 'geojson'))
raw_mci_data <- filter(datastore_resources, row_number()==2) |> get_resource()

# Write data
write_csv (
  x = raw_mci_data,
  file = "unedited_data.csv"
)

# Read and clean the dataset
raw_mci_data <- read_csv(
  file = here("inputs/data/unedited_data.csv"))
clean_mci_data <- clean_names(raw_mci_data)

# Write the cleaned dataset
write_csv (
  x = clean_mci_data,
  file = "clean_mci.csv"
)

clean_mci_data <- read_csv(
  file = here("inputs/data/clean_mci.csv"))

# Tests
clean_mci_data$report_year |> min() == 2014
clean_mci_data$report_year |> max() == 2023
clean_mci_data$occ_year |> unique()
any(duplicated(clean_mci_data$x_id))
clean_mci_data$mci_category |> unique() == c("Assault", "Robbery", "Auto Theft", "Break and Enter", "Theft Over")
clean_mci_data$division |> unique()
clean_mci_data$occ_dow |> unique()
clean_mci_data$occ_hour |> class() == "numeric"
