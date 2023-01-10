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

    ## R version 4.1.2 (2021-11-01)
    ## Platform: x86_64-apple-darwin17.0 (64-bit)
    ## Running under: macOS Monterey 12.4
    ## 
    ## Matrix products: default
    ## LAPACK: /Library/Frameworks/R.framework/Versions/4.1/Resources/lib/libRlapack.dylib
    ## 
    ## locale:
    ## [1] en_US.UTF-8/en_US.UTF-8/en_US.UTF-8/C/en_US.UTF-8/en_US.UTF-8
    ## 
    ## attached base packages:
    ## [1] stats     graphics  grDevices utils     datasets  methods   base     
    ## 
    ## other attached packages:
    ##  [1] car_3.0-12      carData_3.0-4   lmerTest_3.1-3  lme4_1.1-27.1   Matrix_1.3-4    vegan_2.5-7    
    ##  [7] lattice_0.20-45 permute_0.9-5   tidyr_1.1.4     dplyr_1.0.7     plyr_1.8.6     
    ## 
    ## loaded via a namespace (and not attached):
    ##  [1] Rcpp_1.0.7          pillar_1.6.4        compiler_4.1.2      nloptr_1.2.2.3      tools_4.1.2        
    ##  [6] boot_1.3-28         lifecycle_1.0.1     tibble_3.1.6        nlme_3.1-153        gtable_0.3.0       
    ## [11] mgcv_1.8-38         pkgconfig_2.0.3     rlang_0.4.12        parallel_4.1.2      xfun_0.36          
    ## [16] knitr_1.36          cluster_2.1.2       generics_0.1.1      vctrs_0.3.8         grid_4.1.2         
    ## [21] tidyselect_1.1.1    glue_1.5.0          R6_2.5.1            fansi_0.5.0         minqa_1.2.4        
    ## [26] purrr_0.3.4         ggplot2_3.3.5       magrittr_2.0.1      scales_1.1.1        ellipsis_0.3.2     
    ## [31] MASS_7.3-54         splines_4.1.2       abind_1.4-5         colorspace_2.0-2    numDeriv_2016.8-1.1
    ## [36] utf8_1.2.2          munsell_0.5.0       crayon_1.4.2    