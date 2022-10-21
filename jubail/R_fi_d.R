# General description ####
# This script loads data and fit the GLMM ins Jubail (High-performance computing at NYUAD).

# load packages #
library(lme4)
library(lmerTest)

df_fi <- readRDS("df_fi.rds")

# Facilitation and interference effect ####

## Zero-correlation-parameter model ####
# message("Fitting the zcp model...\noutput: lmm_fi_d_zcp")
# lmm_fi_d_zcp <- 
#   glmer(isSame ~ Congruency * SD + Cue +
#           (ConInc + IncIso + SD_C + 
#              ConInc_SD + IncIso_SD || Subject) +
#           (ConInc + IncIso + SD_C + 
#              ConInc_SD + IncIso_SD || StimGroup),
#         df_fi,
#         family = binomial(link = "probit"),
#         control = glmerControl(optCtrl = list(maxfun = 1e7)))
# saveRDS(lmm_fi_d_zcp, "lmm_fi_d_zcp.rds")

## Extended model ####
# message("Fitting the etd model...\noutput: lmm_fi_d_etd")
# lmm_fi_d_etd <- 
#   glmer(isSame ~ Congruency * SD + Cue +
#           (ConInc + IncIso + SD_C + 
#              ConInc_SD + IncIso_SD | Subject) +
#           (ConInc + IncIso + SD_C + 
#              ConInc_SD + IncIso_SD | StimGroup),
#         df_fi,
#         family = binomial(link = "probit"),
#         control = glmerControl(optCtrl = list(maxfun = 1e7)))
# saveRDS(lmm_fi_d_etd, "lmm_fi_d_etd.rds")

## Extended model2 ####
# message("Fitting the etd2 model...\noutput: lmm_fi_d_etd2")
# lmm_fi_d_etd2 <-
#   glmer(isSame ~ Congruency * SD + Cue +
#           (SD_C + # ConInc + IncIso +
#              ConInc_SD + IncIso_SD | Subject) +
#           (0 + SD_C + # ConInc + IncIso +
#              ConInc_SD + IncIso_SD | StimGroup),
#         df_fi,
#         family = binomial(link = "probit"),
#         control = glmerControl(optCtrl = list(maxfun = 1e7)))
# saveRDS(lmm_fi_d_etd2, "lmm_fi_d_etd2.rds")

## Extended model3 ####
# message("Fitting the etd3 model...\noutput: lmm_fi_d_etd3")
# lmm_fi_d_etd3 <-
#   glmer(isSame ~ Congruency * SD + Cue +
#           (0 + SD_C + # ConInc + IncIso +
#              ConInc_SD + IncIso_SD | Subject) +
#           (0 + SD_C + # ConInc + IncIso +
#              ConInc_SD | StimGroup), # + IncIso_SD
#         df_fi,
#         family = binomial(link = "probit"),
#         control = glmerControl(optCtrl = list(maxfun = 1e7)))
# saveRDS(lmm_fi_d_etd3, "lmm_fi_d_etd3.rds")

## session information
sessionInfo()


