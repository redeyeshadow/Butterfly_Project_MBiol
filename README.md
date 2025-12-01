# Butterfly_Project_MBiol

This repository contains code, data and figures to support Heywood et al. *Museum specimens reveal butterfly size increases through time but divergent responses to temperature*

# Structure:

- `src/` Contains R scripts (.rmd markdown format) to reproduce all results and figures. Scripts are numbered for the order they would need to be run. 
  - `Cleaning1.rmd`: Data assimilation and initial filtering of NHM data. Includes links to original data sources
  - `Cleaning2.rmd`: Data assimilation, location name cleaning and initial filtering of OUMNH data. 
  - `Cleaning3.rmd`: GIS wrangling of temperature data.  Includes links to original data sources
  - `Cleaning4.rmd`: Calculation of location coordinates from areas in the Oxford dataset 
  - `Cleaning5.rmd`: Tackling brood labeling and matching temperature data to species late-larval period
  - `StatsFitting1.rmd`: Fitting species-level models (Size~ Year+Temp+ Lat+Sex) for both datasets.
  - `StatsFitting2.rmd`: Across-species models for NHM dataset
  - `StatsFitting3.rmd`: Across-species models for Oxford dataset, and comparision between the two datasets
  - `StatsFitting4.rmd`: Plots of species trait correlations
  - `SuppInfo1.rmd`: Makes table of species details
  - `SuppInfo2.rmd`: Makes maps and plots of distribution of data for each species. 
  - `SI.tex` compiles the pdf for the SI files. 
  
*Package details are available in `sessionInfo()` at the bottom of each corresponding .html.*

- `data/` Contains raw and semi-processed data. (Navigating these files would be easiest from the respective R scripts described above.) 
- `figs/` Output figures. 
- `NHM_modelfitsM1/` Species level model fits (brms) for the NHM data
- `OUM_modelfitsM1`  Species level model fits (brms) for the Oxford data
- `statsresults/ ` .csv files of the posterior summaries

# Data re-use Note:

Processed, public, datasets from other authors are included in this repository for ease of reproduction. Any future use should cite the original sources. 


