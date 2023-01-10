
# Biomass -----------------------------------------------------------------
# . Eucalyptus ------------------------------------------------------------
euc_biom_m <- lmer(sqrt(total_biomass) ~ co2 * water + (1|block), data = euc_dd)
Anova(euc_biom_m, test.statistic = "F")
# model diagnosis
qqresidPlot(euc_biom_m)

# . Hakea -----------------------------------------------------------------
hak_biom_m1 <- lmer(total_biomass ~ co2 * water + (1|block), data = hak_dd)
summary(hak_biom_m1)
# no block effect
hak_biom_m2 <- lm(total_biomass ~ co2 * water, data = hak_dd)
Anova(hak_biom_m2)
# model diagnosis
qqresidPlot(hak_biom_m2)

# . Microlaena ------------------------------------------------------------
mic_biom_m1 <- lmer(total_biomass ~ co2 * water + (1|block), data = mic_dd)
summary(mic_biom_m1)
# no block effect
mic_biom_m2 <- lm(total_biomass ~ co2 * water, data = mic_dd)
Anova(mic_biom_m2)
# model diagnosis
qqresidPlot(mic_biom_m2)




# Root:Shoot --------------------------------------------------------------
# . Eucalyptus ------------------------------------------------------------
euc_rsr_m <- lmer(RSR ~ co2 * water + (1|block), data = euc_dd)
Anova(euc_rsr_m, test.statistic = "F")
# model diagnosis
qqresidPlot(euc_rsr_m)

# . Hakea -----------------------------------------------------------------
hak_rsr_m <- lmer(RSR ~ co2 * water + (1|block), data = hak_dd)
Anova(hak_rsr_m, test.statistic = "F")
# model diagnosis
qqresidPlot(hak_rsr_m)


# . Microlaena ------------------------------------------------------------
mic_rsr_m <- lmer(1/RSR ~ co2 * water + (1|block), data = mic_dd)
Anova(mic_rsr_m, test.statistic = "F")
# model diagnosis
qqresidPlot(mic_rsr_m)




# Soil nitrate ------------------------------------------------------------
# . Eucalyptus ------------------------------------------------------------
euc_soilnit_m <- lmer(soil_nitrate ~ co2 * water + (1|block), data = euc_dd)
Anova(euc_soilnit_m, test.statistic = "F")
# model diagnosis
qqresidPlot(euc_soilnit_m)


# . Hakea -----------------------------------------------------------------
hak_soilnit_m <- lmer(soil_nitrate ~ co2 * water + (1|block), data = hak_dd)
Anova(hak_soilnit_m, test.statistic = "F")
# model diagnosis
qqresidPlot(hak_soilnit_m)

# . Microlaena ------------------------------------------------------------
mic_soilnit_m <- lmer(log(soil_nitrate) ~ co2 * water + (1|block), data = mic_dd)
Anova(mic_soilnit_m, test.statistic = "F")
# model diagnosis
qqresidPlot(mic_soilnit_m)




# Soil ammonium -----------------------------------------------------------
# . Eucalyptus ------------------------------------------------------------
euc_soilanm_m1 <- lmer(soil_ammonium^(1/3) ~ co2 * water + (1|block), data = euc_dd)
summary(euc_soilanm_m1)
  # no block effect
euc_soilanm_m2 <- lm(soil_ammonium^(1/3) ~ co2 * water, data = euc_dd)
Anova(euc_soilanm_m2)
# model diagnosis
qqresidPlot(euc_soilanm_m2)

# . Hakea -----------------------------------------------------------------
hak_soilanm_m <- lmer(soil_ammonium^(-1.88) ~ co2 * water + (1|block), data = hak_dd)
Anova(hak_soilanm_m, test.statistic = "F")
# model diagnosis
qqresidPlot(hak_soilanm_m)

# remove one outlier at eCO2:High_watred
boxplot(soil_ammonium ~ co2 * water, hak_dd)
hak_soilanm_m2 <- lmer(soil_ammonium^(-1.76) ~ co2 * water + (1|block), data = hak_dd[-which.max(hak_dd$soil_ammonium), ])
hak_soilanm_m3 <- lm(soil_ammonium^(-1.76) ~ co2 * water, data = hak_dd[-which.max(hak_dd$soil_ammonium), ])
Anova(hak_soilanm_m3)
qqresidPlot(hak_soilanm_m3)

hak_dd[-which.max(hak_dd$soil_ammonium), ] %>% 
  select(water, soil_ammonium) %>% 
  group_by(water) %>% 
  summarise(across(soil_ammonium, mean), .groups = "drop") %>% 
  pivot_wider(names_from =  water, values_from = soil_ammonium) %>% 
  mutate(RR = Low_watered / High_watered - 1)


# . Microlaena ------------------------------------------------------------
mic_soilanm_m <- lmer(log(soil_ammonium) ~ co2 * water + (1|block), data = mic_dd)
Anova(mic_soilanm_m, test.statistic = "F")
# model diagnosis
qqresidPlot(mic_soilanm_m)




# Soil phosphate ----------------------------------------------------------
# . Eucalyptus ------------------------------------------------------------
euc_soilpho_m <- lmer(soil_phosphate ~ co2 * water + (1|block), data = euc_dd)
Anova(euc_soilpho_m, test.statistic = "F")
# model diagnosis
qqresidPlot(euc_soilpho_m)

# . Hakea -----------------------------------------------------------------
hak_soilpho_m <- lmer(soil_phosphate ~ co2 * water + (1|block), data = hak_dd)
Anova(hak_soilpho_m, test.statistic = "F")
# model diagnosis
qqresidPlot(hak_soilpho_m)


# . Microlaena ------------------------------------------------------------
mic_soilpho_m1 <- lmer(sqrt(soil_phosphate) ~ co2 * water + (1|block), data = mic_dd)
Anova(mic_soilpho_m1, test.statistic = "F")
# model diagnosis
qqresidPlot(mic_soilpho_m1)

# remove outlisers
mic_soilpho_m2 <- update(mic_soilpho_m1, subset = -c(19, 25))
qqresidPlot(mic_soilpho_m2)
Anova(mic_soilpho_m2, test.statistic = "F")
# consistent results




# No. of cluster root per root --------------------------------------------
hak_CR_m1 <- lmer(sqrt(ClRootNo_root) ~ co2 * water + (1|block), data = hak_dd)
summary(hak_CR_m1)
# no block effect
hak_CR_m2 <- lm(sqrt(ClRootNo_root) ~ co2 * water, data = hak_dd)
Anova(hak_CR_m2)
# model diagnosis
qqresidPlot(hak_CR_m2)
