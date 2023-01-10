CO<sub>2</sub> concentration and water availability alter the organic acid composition of root exudates in native Australian species
=======

Shun Hasegawa 10<sup>th</sup> January 2023

This repository stores the R scripts and raw data to reproduce the results presented in the manuscript below.

-   Article title: CO<sub>2</sub> concentration and water availability alter the organic acid composition of root exudates in native Australian species
-   Authors: Shun Hasegawa; Megan H. Ryan; Sally A. Power
-   Journal: **Plant and Soil**
-   Article acceptance date: 15<sup>th</sup> December 2022

# File description

## R scripts

-   **analysis.R:** This loads required packages and data.

-   **analysis_TotalRootExudate.R:** This analyses the effects of CO<sub>2</sub> and water treatments on the total amount of oarganic acids (OAs) in root exudates collected from the rhizosphere soil (*OA<sub>rhizo</sub>*) and trap solution (*OA<sub>exuded</sub>*).

-   **analysis_PlantSoil.R:** This analyses the effects of CO<sub>2</sub> and water treatments on plant and soil measurements.

-   **analysis_MultipleRegression.R:** This analyses the association between the total amount of OAs in root exudates and plant and soil measurements using multiple regression.

-   **analysis_RDA.R:** This analyses the association between OA composition and CO<sub>2</sub> and water treatments using redudancy analysis. Furthermore, the correlation between OA composition and plant and soil measurements is analysed.

-   **analysis_All_OArhizo.R** and **analysis_All_OAexuded.R:** There analyse the effects of CO<sub>2</sub> and water treatments on individual OAs using generalised linear mixed effects models.

## Data

-   **Etereticornis_OAexuded.csv:** Data on each OA in *OA<sub>exuded</sub>* from *E. tereticornis*.

-   **Etereticornis_OArhizo.csv:** Data on each OA in *OA<sub>rhizo</sub>* from *E. tereticornis*.

-   **Hsericea_OAexuded.csv:** Data on each OA in *OA<sub>exuded</sub>* from *H. sericea*.

-   **Hsericea_OArhizo.csv:** Data on each OA in *OA<sub>rhizo</sub>* from *H. sericea*.

-   **Mstipoides_OAexuded.csv:** Data on each OA in *OA<sub>exuded</sub>* from *M. stipoides*.

-   **Mstipoides_OArhizo.csv:** Data on each OA in *OA<sub>rhizo</sub>* from *M. stipoides*.

-   **RootExudate_Plant_Soil.csv:** Data on the total amount of OA in root exudates and on plant and soil measurements.

-   **Metadata.csv:** Metadata for the above data files.

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
