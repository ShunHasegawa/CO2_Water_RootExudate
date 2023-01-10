
# Eucalyptus --------------------------------------------------------------
# . Fumaric ---------------------------------------------------------------
euc_OAe_fumaric_glmr1 <- glmer(I(fumaric + .1) ~ co2 * water + (1|block), family = Gamma(link = log), data = euc_OAe_d)
qqresidPlot(euc_OAe_fumaric_glmr1)
summary(euc_OAe_fumaric_glmr1)
Anova(euc_OAe_fumaric_glmr1)

# . Malic ---------------------------------------------------------------
select(hak_OAr_d, malic) # obeserved only in two pots, so can't be analysed

# . Oxalic ---------------------------------------------------------------
euc_OAe_oxalic_glmr1 <- glmer(I(oxalic + 10) ~ co2 * water + (1|block), family = Gamma(link = log), data = euc_OAe_d)
  # singularity
euc_OAe_oxalic_glmr2 <- glmer(I(oxalic + 10) ~ co2 * water + (1|block), family = Gamma(link = "inverse"), data = euc_OAe_d)
qqresidPlot(euc_OAe_oxalic_glmr2)
summary(euc_OAe_oxalic_glmr2)
Anova(euc_OAe_oxalic_glmr2)


# . Shikimic ---------------------------------------------------------------
euc_OAe_shikimic_glmr1 <- glmer(I(shikimic + .1) ~ co2 * water + (1|block), family = Gamma(link = log), data = euc_OAe_d)
qqresidPlot(euc_OAe_shikimic_glmr1)
summary(euc_OAe_shikimic_glmr1)
Anova(euc_OAe_shikimic_glmr1)


# Hakea --------------------------------------------------------------

# . Cis-aconitic ---------------------------------------------------------------
hak_OAe_caconitic_glmr1 <- glmer(I(cis.aconitic + .1) ~ co2 * water + (1|block), family = Gamma(link = log), data = hak_OAe_d)
# singularity
hak_OAe_caconitic_glmr2 <- glmer(I(cis.aconitic + .1) ~ co2 * water + (1|block), family = Gamma(link = "inverse"), data = hak_OAe_d)
# singularity
hak_OAe_caconitic_glmr3 <- glm(I(cis.aconitic + .1) ~ co2 * water, family = Gamma(link = log), data = hak_OAe_d)
qqresidPlot(hak_OAe_caconitic_glmr3)
summary(hak_OAe_caconitic_glmr3)
Anova(hak_OAe_caconitic_glmr3)

# . Oxalic ---------------------------------------------------------------
select(hak_OAe_d, "oxalic") # obeserved only in two pots, so can't be analysed


# . Trans-aconitic ---------------------------------------------------------------
hak_OAe_taconitic_glmr1 <- glmer(trans.aconitic ~ co2 * water + (1|block), family = Gamma(link = log), data = hak_OAe_d)
# singularity
hak_OAe_taconitic_glmr2 <- glmer(trans.aconitic ~ co2 * water + (1|block), family = Gamma(link = "inverse"), data = hak_OAe_d)
qqresidPlot(hak_OAe_taconitic_glmr2)
summary(hak_OAe_taconitic_glmr2)
Anova(hak_OAe_taconitic_glmr2)


# Microlaena --------------------------------------------------------------

# . Citric ---------------------------------------------------------------
mic_OAe_citric_glmr1 <- glmer(I(citric + 3.33) ~ co2 * water + (1|block), family = Gamma(link = log), data = mic_OAe_d)
mic_OAe_citric_glmr2 <- glmer(I(citric + 3.33) ~ co2 * water + (1|block), family = Gamma(link = "inverse"), data = mic_OAe_d)
qqresidPlot(mic_OAe_citric_glmr2)
summary(mic_OAe_citric_glmr2)
Anova(mic_OAe_citric_glmr2)


# . Fumaric ---------------------------------------------------------------
mic_OAe_fumaric_glmr1 <- glmer(I(fumaric + .0333) ~ co2 * water + (1|block), family = Gamma(link = log), data = mic_OAe_d)
qqresidPlot(mic_OAe_fumaric_glmr1)
summary(mic_OAe_fumaric_glmr1)
Anova(mic_OAe_fumaric_glmr1)


# . Malic ---------------------------------------------------------------
mic_OAe_malic_glmr1 <- glmer(I(malic + 3.33) ~ co2 * water + (1|block), family = Gamma(link = log), data = mic_OAe_d)
qqresidPlot(mic_OAe_malic_glmr1)
summary(mic_OAe_malic_glmr1)
Anova(mic_OAe_malic_glmr1)


# . Oxalic ---------------------------------------------------------------
select(mic_OAe_d, "oxalic") # obeserved only in two pots, so can't be analysed


# . Shikimic ---------------------------------------------------------------
mic_OAe_shikimic_glmr1 <- glmer(I(shikimic + .0333) ~ co2 * water + (1|block), family = Gamma(link = log), data = mic_OAe_d)
mic_OAe_shikimic_glmr2 <- glmer(I(shikimic + .0333) ~ co2 * water + (1|block), family = Gamma(link = "inverse"), data = mic_OAe_d)
# this generates error: Error in pwrssUpdate(pp, resp, tol = tolPwrss, GQmat = GHrule(0L), compDev = compDev,:PIRLS loop resulted in NaN value; try
mic_OAe_shikimic_glmr3 <- glmer(I(shikimic * 3 + .1) ~ co2 * water + (1|block), family = Gamma(link = "inverse"), data = mic_OAe_d)
summary(mic_OAe_shikimic_glmr3)
Anova(mic_OAe_shikimic_glmr3)
qqresidPlot(mic_OAe_shikimic_glmr3)


