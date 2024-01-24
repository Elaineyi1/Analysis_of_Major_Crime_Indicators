# Analysis of Major Crime Indicator in Toronto

## Overview of Paper
This paper analyzes the distribution of major crimes in Toronto over the past ten years. To be more specific, it discusses the distribution of different types of crimes, regions and times.

## Structure
There are three folders:
1. outputs/paper contains the paper, the Quarto file used to write the paper, the reference bibliography, and a folder with figures
2. inputs/data includes the raw dataset downloaded from OpenDataToronto, and the cleaned data
3. scripts contains the Quarto file used to download the dataset, the simulated data, as well as the plan for simulation

## How to Run
1. Run scripts/00-simulated_data.qmd to see the plan and simulation
2. Run scripts/01-download_data.qmd to generate raw and cleaned data
3. Run outputs/paper/paper.qmd to generate the PDF of the paper