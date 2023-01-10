
# Prepare data ------------------------------------------------------------
euc_env_dd <- euc_dd %>% 
  mutate_at(.vars = vars(total_biomass, soil_nitrate, soil_phosphate), .funs = funs(Z = scale(.)[, 1])) %>% # z-standardisation
  mutate_at(.vars = vars(RSR, soil_ammonium, ), .funs = funs(logZ = scale(log(.))[, 1]))                    # z-standardisation after log

hak_env_dd <- hak_dd %>% 
  mutate_at(.vars = vars(total_biomass, soil_nitrate, soil_phosphate, ClRootNo_root), .funs = funs(Z = scale(.)[, 1])) %>%
  mutate_at(.vars = vars(RSR, soil_ammonium, ), .funs = funs(logZ = scale(log(.))[, 1]))

mic_env_dd <- mic_dd %>% 
  mutate_at(.vars = vars(total_biomass, soil_nitrate, soil_phosphate), .funs = funs(Z = scale(.)[, 1])) %>%
  mutate_at(.vars = vars(RSR, soil_ammonium, ), .funs = funs(logZ = scale(log(.))[, 1]))



# OArhizo -----------------------------------------------------------------

# . Eucalyptus -----------------------------------------------------------
euc_OAr_env1 <- lmer(OArhizo_plant^(1/3) ~ total_biomass_Z + RSR_logZ + soil_nitrate_Z + soil_ammonium_logZ + soil_phosphate_Z + (1|block), euc_env_dd)
summary(euc_OAr_env1)
# no block effect
euc_OAr_env2 <- lm(OArhizo_plant^(1/3) ~ total_biomass_Z + RSR_logZ + soil_nitrate_Z + soil_ammonium_logZ + soil_phosphate_Z, euc_env_dd)
# model diagnosis
vif(euc_OAr_env2)
qqresidPlot(euc_OAr_env2)
# coefficients
summary(euc_OAr_env2)
confint(euc_OAr_env2)


# . Hakea ----------------------------------------------------------------
hak_OAr_env1 <- lmer(OArhizo_plant^(-.4) ~ total_biomass_Z + RSR_logZ + soil_nitrate_Z + soil_ammonium_logZ + soil_phosphate_Z + ClRootNo_root_Z +  (1|block), hak_env_dd)
# model diagnosis
vif(hak_OAr_env1)
qqresidPlot(hak_OAr_env1)
# coefficients
summary(hak_OAr_env1)
confint(hak_OAr_env1)


# . Microlaena -----------------------------------------------------------
mic_OAr_env1 <- lmer(OArhizo_plant^(1/3) ~ total_biomass_Z + RSR_logZ + soil_nitrate_Z + soil_ammonium_logZ + soil_phosphate_Z + (1|block), mic_env_dd)
# model diagnosis
vif(mic_OAr_env1)
qqresidPlot(mic_OAr_env1)
# coefficients
summary(mic_OAr_env1)
confint(mic_OAr_env1)


# OAexuded-----------------------------------------------------------------

# . Eucalyptus -----------------------------------------------------------
euc_OAe_env1 <- lmer(log(OAexuded_plant + .1) ~ total_biomass_Z + RSR_logZ + soil_nitrate_Z + soil_ammonium_logZ + soil_phosphate_Z + (1|block), euc_env_dd)
summary(euc_OAe_env1)
# no block effect
euc_OAe_env2 <- lm(log(OAexuded_plant + .1) ~ total_biomass_Z + RSR_logZ + soil_nitrate_Z + soil_ammonium_logZ + soil_phosphate_Z, euc_env_dd)
# model diagnosis
vif(euc_OAe_env2)
qqresidPlot(euc_OAe_env2)
# coefficients
summary(euc_OAe_env2)
confint(euc_OAe_env2)


# . Hakea ----------------------------------------------------------------
hak_OAe_env1 <- lmer(log(OAexuded_plant) ~ total_biomass_Z + RSR_logZ + soil_nitrate_Z + soil_ammonium_logZ + soil_phosphate_Z + ClRootNo_root_Z + (1|block), hak_env_dd)
summary(hak_OAe_env1)
# no block effect
hak_OAe_env2 <- lm(log(OAexuded_plant) ~ total_biomass_Z + RSR_logZ + soil_nitrate_Z + soil_ammonium_logZ + soil_phosphate_Z + ClRootNo_root_Z, hak_env_dd)
# model diagnosis
vif(hak_OAe_env2)
qqresidPlot(hak_OAe_env2)
# coefficients
summary(hak_OAe_env2)
confint(hak_OAe_env2)


# . Microlaena -----------------------------------------------------------
mic_OAe_env1 <- lmer(OAexuded_plant^(1/3) ~ total_biomass_Z + RSR_logZ + soil_nitrate_Z + soil_ammonium_logZ + soil_phosphate_Z + (1|block), mic_env_dd)
# model diagnosis
vif(mic_OAe_env1)
qqresidPlot(mic_OAe_env1)
# coefficients
summary(mic_OAe_env1)
confint(mic_OAe_env1)

