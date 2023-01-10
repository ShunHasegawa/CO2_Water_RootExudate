
# OArhizo -----------------------------------------------------------------

# .  Eucalyptus -----------------------------------------------------------
euc_OAr_sp <- select(euc_OAr_d, citric:shikimic) %>% 
  decostand(., method = "hellinger")
# test interaction
euc_OAr_rda1 <- rda(euc_OAr_sp ~ co2 * water, euc_OAr_d)
euc_OAr_rda2 <- rda(euc_OAr_sp ~ co2 + water, euc_OAr_d)
RsquareAdj(euc_OAr_rda1)
RsquareAdj(euc_OAr_rda2)
  # Interaction term does not improve the model so remove it.
summary(euc_OAr_rda2)
anova(euc_OAr_rda2, permutations = 4999)
anova(euc_OAr_rda2, by = "margin", permutations = 4999)
anova(euc_OAr_rda2, by = "axis")

# Correlation with platn/soil variables
envfit(euc_OAr_rda2 ~ total_biomass + log(RSR) + soil_nitrate + soil_ammonium + soil_phosphate, euc_OAr_d, perm = 4999)



# . Hakea -----------------------------------------------------------------
hak_OAr_sp <- select(hak_OAr_d, cis.aconitic:trans.aconitic) %>% 
  decostand(., method = "hellinger")
# test interaction
hak_OAr_rda1 <- rda(hak_OAr_sp ~ co2 * water, hak_OAr_d)
hak_OAr_rda2 <- rda(hak_OAr_sp ~ co2 + water, hak_OAr_d)
RsquareAdj(hak_OAr_rda1)
RsquareAdj(hak_OAr_rda2)
# Interaction term does not improve the model so remove it.
summary(hak_OAr_rda2)
anova(hak_OAr_rda2, permutations = 4999)

# Correlation with plant/soil variables
envfit(hak_OAr_rda2 ~ total_biomass + log(RSR) + soil_nitrate + soil_ammonium + soil_phosphate + ClRootNo_root, hak_OAr_d, perm = 4999)



# .  Microlaena -----------------------------------------------------------
mic_OAr_sp <- select(mic_OAr_d, acetic:shikimic) %>% 
  decostand(., method = "hellinger")
# test interaction
mic_OAr_rda1 <- rda(mic_OAr_sp ~ co2 * water, mic_OAr_d)
mic_OAr_rda2 <- rda(mic_OAr_sp ~ co2 + water, mic_OAr_d)
RsquareAdj(mic_OAr_rda1)
RsquareAdj(mic_OAr_rda2)
# Interaction term does not improve the model so remove it.
summary(mic_OAr_rda2)
anova(mic_OAr_rda2, permutations = 4999)
anova(mic_OAr_rda2, by = "margin", permutations = 4999)
anova(mic_OAr_rda2, by = "axis")


# Correlation with platn/soil variables
envfit(mic_OAr_rda2 ~ total_biomass + log(RSR) + soil_nitrate + soil_ammonium + soil_phosphate, mic_OAr_d, perm = 4999)




# OAexuded ----------------------------------------------------------------

# .  Eucalyptus -----------------------------------------------------------
euc_OAe_sp <- select(euc_OAe_d, fumaric:shikimic) %>% 
  decostand(., method = "hellinger")
# test interaction
euc_OAe_rda1 <- rda(euc_OAe_sp ~ co2 * water, euc_OAe_d)
euc_OAe_rda2 <- rda(euc_OAe_sp ~ co2 + water, euc_OAe_d)
RsquareAdj(euc_OAe_rda1)
RsquareAdj(euc_OAe_rda2)
# Interaction term does not improve the model so remove it.
summary(euc_OAe_rda2)
anova(euc_OAe_rda2, permutations = 4999)

# Correlation with platn/soil variables
envfit(euc_OAe_rda2 ~ total_biomass + log(RSR) + soil_nitrate + soil_ammonium + soil_phosphate, euc_OAe_d, perm = 4999)

# .  Hakea -----------------------------------------------------------
hak_OAe_sp <- select(hak_OAe_d, cis.aconitic:trans.aconitic) %>% 
  decostand(., method = "hellinger")
# test interaction
hak_OAe_rda1 <- rda(hak_OAe_sp ~ co2 * water, hak_OAe_d)
hak_OAe_rda2 <- rda(hak_OAe_sp ~ co2 + water, hak_OAe_d)
RsquareAdj(hak_OAe_rda1)
RsquareAdj(hak_OAe_rda2)
# Interaction term does not improve the model so remove it.
summary(hak_OAe_rda2)
anova(hak_OAe_rda2, permutations = 4999)

# Correlation with platn/soil variables
envfit(hak_OAe_rda2 ~ total_biomass + log(RSR) + soil_nitrate + soil_ammonium + soil_phosphate + ClRootNo_root, hak_OAe_d, perm = 4999)


# . Microlaena -----------------------------------------------------------
mic_OAe_sp <- select(mic_OAe_d, citric:shikimic) %>% 
  decostand(., method = "hellinger")
# test interaction
mic_OAe_rda1 <- rda(mic_OAe_sp ~ co2 * water, mic_OAe_d)
mic_OAe_rda2 <- rda(mic_OAe_sp ~ co2 + water, mic_OAe_d)
RsquareAdj(mic_OAe_rda1)
RsquareAdj(mic_OAe_rda2)
# Interaction term does not improve the model so remove it.
summary(mic_OAe_rda2)
anova(mic_OAe_rda2, permutations = 4999)
anova(mic_OAe_rda2, by = "margin", permutations = 4999)
anova(mic_OAe_rda2, by = "axis")

# Correlation with platn/soil variables
envfit(mic_OAe_rda2 ~ total_biomass + log(RSR) + soil_nitrate + soil_ammonium + soil_phosphate, mic_OAe_d, perm = 4999)
