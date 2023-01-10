
# Packages ----------------------------------------------------------------

library(plyr)
library(dplyr)
library(tidyr)
library(vegan)
library(lme4)
library(lmerTest)
library(lmerTest)
library(car)

# Functions ---------------------------------------------------------------

# Create qqplot and residual-fitted plot
qqresidPlot <- function(model){
  require(car)
  
  par(mfrow = c(1, 2), mar = c(4, 4, 1, .5))
  plot(resid(model) ~ fitted(model))
  abline(h = 0, lty = "dotted")
  qqPlot(resid(model))
  par(mfrow = c(1, 1), mar = c(5.1, 4.1, 4.1, 2.1))
}


# Load data ---------------------------------------------------------------

# total exudate
rootexudate_d <- read.csv("Data/RootExudate_Plant_Soil.csv", stringsAsFactors = FALSE)
names(rootexudate_d)
trt_env_dd <- select(rootexudate_d, species:ClRootNo_root)    # Treatment and Plant/Soil measurements
euc_dd <- filter(rootexudate_d, species == "E.tereticornis")  # DF for Eucalyptus
hak_dd <- filter(rootexudate_d, species == "H.sericea")       # DF for Hakea
mic_dd <- filter(rootexudate_d, species == "M.stipoides")     # DF for Microlaena

# individual OAs
euc_OAr_d <- read.csv("Data/Etereticornis_OArhizo.csv") %>%   # DF for OArhizo from Eucalyptus
  left_join(trt_env_dd)
euc_OAe_d <- read.csv("Data/Etereticornis_OAexuded.csv") %>%  # DF for OAexuded from Eucalyptus
left_join(trt_env_dd)
hak_OAr_d <- read.csv("Data/Hsericea_OArhizo.csv") %>%        # DF for OArhizo from Hakea
  left_join(trt_env_dd)
hak_OAe_d <- read.csv("Data/Hsericea_OAexuded.csv") %>%       # DF for OAexuded from Hakea
  left_join(trt_env_dd)
mic_OAr_d <- read.csv("Data/Mstipoides_OArhizo.csv") %>%      # DF for OArhizo from Microlaena
  left_join(trt_env_dd)
mic_OAe_d <- read.csv("Data/Mstipoides_OAexuded.csv") %>%     # DF for OAexuded from Microlaena
  left_join(trt_env_dd)

# Analysis ----------------------------------------------------------------

# total root exudate
source("R/analysis_TotalRootExudate.R")

# Plant & Soil Measurements
source("R/analysis_PlantSoil.R")

# Multiple regression
source("R/analysis_MultipleRegression.R")

# RDA
source("R/analysis_RDA.R")

# Individual OAs
source("R/analysis_All_OArhizo.R")
source("R/analysis_All_OAexuded.R")
