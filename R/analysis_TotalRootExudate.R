
# OArhizo per plant -------------------------------------------------------
# . Eucalyptus ------------------------------------------------------------
euc_OAr_plant_m1 <- lmer(OArhizo_plant^(1/3) ~ co2 * water + (1|block), data = euc_dd)
summary(euc_OAr_plant_m1)
Anova(euc_OAr_plant_m1, test.statistic = "F")
# model diagnosis
qqresidPlot(euc_OAr_plant_m1)

# . Hakea -------------------------------------------------------------------
hak_OAr_m1 <- lmer(OArhizo_plant^(-0.4) ~ co2 * water + (1|block), data = hak_dd)
summary(hak_OAr_m1)
  # no blocking effect
hak_OAr_m2 <- lm(OArhizo_plant^(-0.4) ~ co2 * water, data = hak_dd)
summary(hak_OAr_m2)
Anova(hak_OAr_m2)
# model diagnosis
qqresidPlot(hak_OAr_m2)


# . Microlaena --------------------------------------------------------------
mic_OAr_m1 <- lmer(OArhizo_plant^(1/3) ~ co2 * water + (1|block), data = mic_dd)
summary(mic_OAr_m1)
Anova(mic_OAr_m1, test.statistic = "F")
qqresidPlot(mic_OAr_m1)




# OAexuded per plant ------------------------------------------------------
# . Eucalyptus ------------------------------------------------------------
euc_OAe_plant_m1 <- lmer(log(OAexuded_plant + .1) ~ co2 * water + (1|block), data = euc_dd)
summary(euc_OAe_plant_m1)
  # no block effect
euc_OAe_plant_m2 <- lm(log(OAexuded_plant + .1) ~ co2 * water, data = euc_dd)
Anova(euc_OAe_plant_m2)
# model diagnosis
qqresidPlot(euc_OAe_plant_m2)


# . Hakea -------------------------------------------------------------------
hak_OAe_plant_m1 <- lmer(log(OAexuded_plant) ~ co2 * water + (1|block), data = hak_dd)
summary(hak_OAe_plant_m1)
  # no blocking
hak_OAe_plant_m2 <- lm(log(OAexuded_plant) ~ co2 * water, data = hak_dd)
Anova(hak_OAe_plant_m2)
# model diagnosis
qqresidPlot(hak_OAe_plant_m2)


# . Microlaena --------------------------------------------------------------
mic_OAe_m1 <- lmer(OAexuded_plant^(1/3) ~ co2 * water + (1|block), data = mic_dd)
summary(mic_OAe_m1)
Anova(mic_OAe_m1, test.statistic = "F")
# model diagnosis
qqresidPlot(mic_OAe_m1)





# OArhizo per root --------------------------------------------------------
# . Eucalyptus ------------------------------------------------------------
euc_OAr_root_m1 <- lmer(sqrt(OArhizo_root) ~ co2 * water + (1|block), data = euc_dd)
summary(euc_OAr_root_m1)
  # no block effect
euc_OAr_root_m2 <- lm(sqrt(OArhizo_root) ~ co2 * water, data = euc_dd)
Anova(euc_OAr_root_m2, test.statistic = "F")
# model diagnosis
qqresidPlot(euc_OAr_root_m2)


# . Hakea -------------------------------------------------------------------
hak_OAr_root_m1 <- lmer(OArhizo_root^(-.4) ~ co2 * water + (1|block), data = hak_dd)
summary(hak_OAr_root_m1)
Anova(hak_OAr_root_m1, test.statistic = "F")
# model diagnosis
qqresidPlot(hak_OAr_root_m1)

# . Microlaena --------------------------------------------------------------
mic_OAr_root_m1 <- lmer(OArhizo_root^(1/3) ~ co2 * water + (1|block), data = mic_dd)
summary(mic_OAr_root_m1)
Anova(mic_OAr_root_m1, test.statistic = "F")
# model diagnosis
qqresidPlot(mic_OAr_root_m1)





# OAexuded per root -------------------------------------------------------
# . Eucalyptus ------------------------------------------------------------
euc_OAe_root_m1 <- lmer(OAexuded_root^(1/3) ~ co2 * water + (1|block), data = euc_dd)
summary(euc_OAe_root_m1)
  # no block effect
euc_OAe_root_m2 <- lm(OAexuded_root^(1/3) ~ co2 * water, data = euc_dd)
Anova(euc_OAe_root_m2, test.statistic = "F")
# model diagnosis
qqresidPlot(euc_OAe_root_m2)

# . Hakea -------------------------------------------------------------------
hak_OAe_root_m1 <- lmer(log(OAexuded_root) ~ co2 * water + (1|block), data = hak_dd)
summary(hak_OAe_root_m1)
# no block effect
hak_OAe_root_m2 <- lm(log(OAexuded_root) ~ co2 * water, data = hak_dd)
Anova(hak_OAe_root_m2, test.statistic = "F")
# model diagnosis
qqresidPlot(hak_OAe_root_m2)


# . Microlaena --------------------------------------------------------------
mic_OAe_root_m1 <- lmer(log(OAexuded_root+1) ~ co2 * water + (1|block), data = mic_dd)
summary(mic_OAe_root_m1)
Anova(mic_OAe_root_m1, test.statistic = "F")
# model diagnosis
qqresidPlot(mic_OAe_root_m1)




# OArhizo C per plant -----------------------------------------------------
# . Eucalyptus ------------------------------------------------------------
euc_OAr_C_plant_m1 <- lmer(OArhizoC_plant^(1/3) ~ co2 * water + (1|block), data = euc_dd)
summary(euc_OAr_C_plant_m1)
Anova(euc_OAr_C_plant_m1, test.statistic = "F")
# model diagnosis
qqresidPlot(euc_OAr_C_plant_m1)


# . Hakea -------------------------------------------------------------------
hak_OAr_C_plant_m1 <- lmer(OArhizoC_plant^(-.4) ~ co2 * water + (1|block), data = hak_dd)
summary(hak_OAr_C_plant_m1)
  # no blocking effect
hak_OAr_C_plant_m2 <- lm(OArhizoC_plant^(-.4) ~ co2 * water, data = hak_dd)
Anova(hak_OAr_C_plant_m2)
# model diagnosis
qqresidPlot(hak_OAr_C_plant_m2)


# . Microlaena --------------------------------------------------------------
mic_OAr_C_plant_m1 <- lmer(OArhizoC_plant^(1/3) ~ co2 * water + (1|block), data = mic_dd)
summary(mic_OAr_C_plant_m1)
Anova(mic_OAr_C_plant_m1, test.statistic = "F")
# model diagnosis
qqresidPlot(mic_OAr_C_plant_m1)



# OAexuded C per plant ----------------------------------------------------
# . Eucalyptus ------------------------------------------------------------
euc_OAe_C_plant_m1 <- lmer(log(OAexudedC_plant + .1) ~ co2 * water + (1|block), data = euc_dd)
summary(euc_OAe_C_plant_m1)
  # no blocking effect
euc_OAe_C_plant_m2 <- lm(log(OAexudedC_plant + .1) ~ co2 * water, data = euc_dd)
summary(euc_OAe_C_plant_m2)
Anova(euc_OAe_C_plant_m2)
# model diagnosis
qqresidPlot(euc_OAe_C_plant_m2)


# . Hakea -------------------------------------------------------------------
hak_OAe_C_plant_m1 <- lmer(OAexudedC_plant^(1/3) ~ co2 * water + (1|block), data = hak_dd)
summary(hak_OAe_C_plant_m1)
# no blocking effect
hak_OAe_C_plant_m2 <- lm(OAexudedC_plant^(1/3) ~ co2 * water, data = hak_dd)
Anova(hak_OAe_C_plant_m2)
# model diagnosis
qqresidPlot(hak_OAe_C_plant_m2)

# . Microlaena --------------------------------------------------------------
mic_OAe_C_plant_m1 <- lmer(log(OAexudedC_plant + .0333) ~ co2 * water + (1|block), data = mic_dd)
summary(mic_OAe_C_plant_m1)
Anova(mic_OAe_C_plant_m1, test.statistic = "F")
# model diagnosis
qqresidPlot(mic_OAe_C_plant_m1)



# OArhizo C per root ------------------------------------------------------
# . Eucalyptus ------------------------------------------------------------
euc_OAr_C_root_m1 <- lmer(sqrt(OArhizoC_root) ~ co2 * water + (1|block), data = euc_dd)
summary(euc_OAr_C_root_m1)
  # no blocking effect
euc_OAr_C_root_m2 <- lm(sqrt(OArhizoC_root) ~ co2 * water, data = euc_dd)
summary(euc_OAr_C_root_m2)
Anova(euc_OAr_C_root_m2)
# model diagnosis
qqresidPlot(euc_OAr_C_root_m2)


# . Hakea -------------------------------------------------------------------
hak_OAr_C_root_m1 <- lmer(OArhizoC_root^(-.4) ~ co2 * water + (1|block), data = hak_dd)
summary(hak_OAr_C_root_m1)
Anova(hak_OAr_C_root_m1, test.statistic = "F")
# model diagnosis
qqresidPlot(hak_OAr_C_root_m1)

# . Microlaena --------------------------------------------------------------
mic_OAr_C_root_m1 <- lmer(OArhizoC_root^(1/3) ~ co2 * water + (1|block), data = mic_dd)
summary(mic_OAr_C_root_m1)
Anova(mic_OAr_C_root_m1, test.statistic = "F")
# model diagnosis
qqresidPlot(mic_OAr_C_root_m1)


# OAexuded C per root -----------------------------------------------------
# . Eucalyptus ------------------------------------------------------------
euc_OAe_C_root_m1 <- lmer(OAexudedC_root^(1/3) ~ co2 * water + (1|block), data = euc_dd)
summary(euc_OAe_C_root_m1)
  # No blocking
euc_OAe_C_root_m2 <- lm(OAexudedC_root^(1/3) ~ co2 * water, data = euc_dd)
summary(euc_OAe_C_root_m2)
Anova(euc_OAe_C_root_m2)
# model diagnosis
qqresidPlot(euc_OAe_C_root_m2)


# . Hakea -------------------------------------------------------------------
hak_OAe_C_root_m1 <- lmer(log(OAexudedC_root) ~ co2 * water + (1|block), data = hak_dd)
summary(hak_OAe_C_root_m1)
  # No blocking
hak_OAe_C_root_m2 <- lm(log(OAexudedC_root) ~ co2 * water, data = hak_dd)
summary(hak_OAe_C_root_m2)
Anova(hak_OAe_C_root_m2)
# model diagnosis
qqresidPlot(hak_OAe_C_root_m2)



# . Microlaena --------------------------------------------------------------
mic_OAe_C_root_m1 <- lmer(OAexudedC_root^(1/3) ~ co2 * water + (1|block), data = mic_dd)
summary(mic_OAe_C_root_m1)
Anova(mic_OAe_C_root_m1, test.statistic = "F")
# model diagnosis
qqresidPlot(mic_OAe_C_root_m1)

