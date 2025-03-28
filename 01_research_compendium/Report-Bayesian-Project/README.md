# Adaptive Playmaking: Incorporating Prior Knowledge in Analyzing Football Passes Using Relational Event Modelling

## Purpose

This project explores the dynamic interactions between football players by analyzing passing events using Bayesian methods. It employs a Bayesian Multinomial Probit Model on Relational Event Data to predict and evaluate the behavior of players, focusing on passes between VfB Stuttgart players during their matches against Bayer Leverkusen in the 2023/24 Bundesliga season.

## Contents

The project includes: 

1. **Data Wrangling:** Event data sourced from football matches, featuring variables like player positions, age differences, and network statistics (inertia, reciprocity).
2.  **Sampling:** Estimation of the model using Gibbs sampling.
3.  **Hypothesis Testing:** Evaluation of a set of four hypotheses using the model Bayesian hypothesis testing.

## Reproducing the Analysis

To reproduce the analysis, follow these steps:

1.  Clone this repository to your local machine.
2.  Open the `Report-Bayesian-Project.Rproj` file in RStudio.
3.  If not done already, install the `renv` package by running `install.packages("renv")` in the R console.
4.  Restore the project library by running `renv::restore()` in the R console.
5.  Run the scripts in the `scripts` folder in the following order:
    -   `01_functions/functions.qmd`
    -   `02_analysis/01_data_wrangling.qmd`
    -   `02_analysis/02_sampling.qmd`
    -   `02_analysis/03_hypothesis_testing.qmd`
6.  Render the report by knitting the `documents/report.qmd` file in RStudio.

**Note**: In the case of issues rendering the report, leading to errors regarding the installed LaTeX packages, make sure the necessary packages are installed by running `sudo tlgmr install [packagename]` in your console. In case, this does not resolve the issue, consider switching to `format: html` in the YAML or opening a GitHub issue.

## Acknowledgements

This project uses data from the [Statsbomb Open-Data Repository](https://github.com/statsbomb/open-data).

![](https://github.com/statsbomb/open-data/blob/03d3ff72eda69b3e53f4ac499f159b6fec5f0df0/img/SB%20-%20Icon%20Lockup%20-%20Colour%20positive.png?raw=true)

## Author

[Jonathan Koop](http://jonathankoop.eu/)

## Date of Creation

January 19, 2025
