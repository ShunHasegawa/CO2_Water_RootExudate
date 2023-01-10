
# Eucalyptus ------------------------------------------------------------

# . Citric ----------------------------------------------------------------
euc_OAr_d$citric # detected in only one pot so can't be analysed


# . Fumaric ---------------------------------------------------------------
euc_OAr_fumaric_glmr1 <- glmer(I(fumaric + .1) ~ co2 * water + (1|block), family = Gamma(link = log), data = euc_OAr_d)
# failed to converge
euc_OAr_fumaric_glmr2 <- glmer(I(fumaric + .1) ~ co2 * water + (1|block), family = Gamma(link = "inverse"), data = euc_OAr_d)
qqresidPlot(euc_OAr_fumaric_glmr2)
summary(euc_OAr_fumaric_glmr2)
Anova(euc_OAr_fumaric_glmr2)


# . Malic -----------------------------------------------------------------
euc_OAr_malic_glmr1 <- glmer(I(malic + 10) ~ co2 * water + (1|block), family = Gamma(link = log), data = euc_OAr_d)
qqresidPlot(euc_OAr_malic_glmr1)
summary(euc_OAr_malic_glmr1)
Anova(euc_OAr_malic_glmr1)


# . Oxalic -----------------------------------------------------------------
euc_OAr_Oxalic_glmr1 <- glmer(I(oxalic + 10) ~ co2 * water + (1|block), family = Gamma(link = log), data = euc_OAr_d)
qqresidPlot(euc_OAr_Oxalic_glmr1)
Anova(euc_OAr_Oxalic_glmr1)


# . Shikimic --------------------------------------------------------------
euc_OAr_shikimic_glmr1 <- glmer(I(shikimic + .1) ~ co2 * water + (1|block), family = Gamma(link = log), data = euc_OAr_d)
qqresidPlot(euc_OAr_shikimic_glmr1)
Anova(euc_OAr_shikimic_glmr1)




# Hakea -------------------------------------------------------------------

# . cis-aconitic -----------------------------------------------------------
hak_OAr_caconitic_glmr1 <- glmer(I(cis.aconitic + .1) ~ co2 * water + (1|block), family = Gamma(link = log), data = hak_OAr_d)
qqresidPlot(hak_OAr_caconitic_glmr1)
Anova(hak_OAr_caconitic_glmr1)

# . Citric -----------------------------------------------------------------
select(hak_OAr_d, citric) # obeserved only in two pots, so can't be analysed

# . Fumaric ----------------------------------------------------------------
select(hak_OAr_d, fumaric) # obeserved only in one pots, so can't be analysed

# . Malic ------------------------------------------------------------------
select(hak_OAr_d, malic) # obeserved only in two pots, so can't be analysed

# . Oxalic -----------------------------------------------------------------
select(hak_OAr_d, co2, water, oxalic) # obeserved only in 1-2 pots per treatment, so can't be analysed

# . Shikimic ---------------------------------------------------------------
select(hak_OAr_d, co2, water, shikimic) # obeserved only in few pots per treatment, so can't be analysed

# . trans-aconitic ---------------------------------------------------------
hak_OAr_transaconitic_glmr1 <- glmer(trans.aconitic ~ co2 * water + (1|block), family = Gamma(link = log), data = hak_OAr_d)
# failed to converge
hak_OAr_transaconitic_glmr2 <- glmer(trans.aconitic ~ co2 * water + (1|block), family = Gamma(link = "inverse"), data = hak_OAr_d)
summary(hak_OAr_transaconitic_glmr2)
qqresidPlot(hak_OAr_transaconitic_glmr2)
Anova(hak_OAr_transaconitic_glmr2)




# Microlaena --------------------------------------------------------------

# . Acetic ----------------------------------------------------------------
select(mic_OAr_d, co2, water, acetic) # obeserved only in few pots, so can't be analysed

# . Citric ----------------------------------------------------------------
mic_OAr_citric_glmr1 <- glmer(I(citric + 3.33) ~ co2 * water + (1|block), family = Gamma(link = log), data = mic_OAr_d)
qqresidPlot(mic_OAr_citric_glmr1)
Anova(mic_OAr_citric_glmr1)

# . Fumaric ----------------------------------------------------------------
select(mic_OAr_d, co2, water, fumaric) # obeserved only in few pots, so can't be analysed

# . Malic ----------------------------------------------------------------
mic_OAr_malic_glmr1 <- glmer(I(malic + 3.33) ~ co2 * water + (1|block), family = Gamma(link = log), data = mic_OAr_d)
qqresidPlot(mic_OAr_malic_glmr1)
Anova(mic_OAr_malic_glmr1)

# . Oxalic ----------------------------------------------------------------
select(mic_OAr_d, co2, water, oxalic) # obeserved only in few pots, so can't be analysed

# . Shikimic ----------------------------------------------------------------
mic_OAr_shikimic_glmr1 <- glmer(I(shikimic +0.0333) ~ co2 * water + (1|block), family = Gamma(link = log), data = mic_OAr_d)
qqresidPlot(mic_OAr_shikimic_glmr1)
Anova(mic_OAr_shikimic_glmr1)

