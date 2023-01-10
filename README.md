---
title: CO~2~ concentration and water availability alter the organic acid composition of root exudates in native Australian species
author: "Shun Hasegawa"
date: '2023-01-10'
output: html_document
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```

This repository stores the R scripts and raw data to reproduce the results presented in the manuscript below.

-   Article title: CO~2~ concentration and water availability alter the organic acid composition of root exudates in native Australian species
-   Authors: Shun Hasegawa; Megan H. Ryan; Sally A. Power
-   Journal: **Plant and Soil**
-   Article acceptance date: 15^th^ December 2022

# File description

## R scripts

-   **analysis.R** This loads required packages and data.

-   **analysis_TotalRootExudate.R** This analyses the effects of CO~2~ and water treatments on the total amount of oarganic acids (OAs) in root exudates collected from the rhizosphere soil (*OA~rhizo~*) and trap solution (*OA~exuded~*).

-   **analysis_PlantSoil.R** This analyses the effects of CO~2~ and water treatments on plant and soil measurements.

-   **analysis_MultipleRegression.R** This analyses the association between the total amount of OAs in root exudates and plant and soil measurements using multiple regression.

-   **analysis_RDA.R** This analyses the association between OA composition and CO~2~ and water treatments using redudancy analysis. Furthermore, the correlation between OA composition and plant and soil measurements is analysed.

-   **analysis_All_OArhizo.R** and **analysis_All_OAexuded.R** There analyse the effects of CO~2~ and water treatments on individual OAs using generalised linear mixed effects models.

## Data

-   **Etereticornis_OAexuded.csv** Data on each OA in *OA~exuded~* from *E. tereticornis*.

-   **Etereticornis_OArhizo.csv** Data on each OA in *OA~rhizo~* from *E. tereticornis*.

-   **Hsericea_OAexuded.csv** Data on each OA in *OA~exuded~* from *H. sericea*.

-   **Hsericea_OArhizo.csv** Data on each OA in *OA~rhizo~* from *H. sericea*.

-   **Mstipoides_OAexuded.csv** Data on each OA in *OA~exuded~* from *M. stipoides*.

-   **Mstipoides_OArhizo.csv** Data on each OA in *OA~rhizo~* from *M. stipoides*.

-   **RootExudate_Plant_Soil.csv** Data on the total amount of OA in root exudates and on plant and soil measurements.

-   **Metadata.csv** Metadata for the above data files.

## Session information

```{r sessioninfo, echo=FALSE, message=FALSE}
library(plyr)
library(dplyr)
library(tidyr)
library(vegan)
library(lme4)
library(lmerTest)
library(lmerTest)
library(car)
sessionInfo()
```
