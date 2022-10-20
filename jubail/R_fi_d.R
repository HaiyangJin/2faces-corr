# General description ####
# This script loads data and fit the GLMM ins Jubail (High-performance computing at NYUAD).

# load packages #
library(lme4)
library(lmerTest)
library(optimx)

df_fi <- readRDS("df_fi.rds")

# Facilitation and interference effect ####

## Zero-correlation-parameter model ####
# lmm_fi_d_zcp <- 
#   glmer(isSame ~ Congruency * SD + Cue +
#           (ConInc + IncIso + SD_C + 
#              ConInc_SD + IncIso_SD || Subject) +
#           (ConInc + IncIso + SD_C + 
#              ConInc_SD + IncIso_SD || StimGroup),
#         df_fi,
#         family = binomial(link = "probit"),
#         control = glmerControl(optimizer = "optimx", 
#                                optCtrl = list(method = "nlminb", 
#                                               starttests = FALSE, 
#                                               kkt = FALSE)))
# 
# saveRDS(lmm_fi_d_zcp, "lmm_fi_d_zcp.rds")

## Reduced model ####
# lmm_fi_d_rdc <- 
#   glmer(isSame ~ Congruency * Alignment * SD + Cue +
#           (Ali_C + SD_C + # Con_C + 
#              Con_SD +  # Con_Ali + Ali_SD +
#              Con_Ali_SD || Subject) +
#           (Con_C + Ali_C + SD_C + 
#              Con_Ali + Con_SD + Ali_SD # + 
#            || StimGroup), # Con_Ali_SD
#         df_fi,
#         family = binomial(link = "probit"),
#         control = glmerControl(optimizer = "optimx", 
#                                optCtrl = list(method = "nlminb", 
#                                               starttests = FALSE, 
#                                               kkt = FALSE)))
# saveRDS(lmm_fi_d_rdc, "lmm_fi_d_rdc.rds")

## Extended model ####
# lmm_fi_d_etd <- 
#   glmer(isSame ~ Congruency * SD + Cue +
#           (ConInc + IncIso + SD_C + 
#              ConInc_SD + IncIso_SD | Subject) +
#           (ConInc + IncIso + SD_C + 
#              ConInc_SD + IncIso_SD | StimGroup),
#         df_fi,
#         family = binomial(link = "probit"),
#         control = glmerControl(optimizer = "optimx", 
#                                optCtrl = list(method = "nlminb", 
#                                               starttests = FALSE, 
#                                               kkt = FALSE)))
# saveRDS(lmm_fi_d_etd, "lmm_fi_d_etd.rds")

## Extended model2 ####
# lmm_fi_d_etd2 <- 
#   glmer(isSame ~ Congruency * SD + Cue +
#           (SD_C + # ConInc + IncIso + 
#              ConInc_SD + IncIso_SD | Subject) +
#           (0 + SD_C + # ConInc + IncIso + 
#              ConInc_SD + IncIso_SD | StimGroup),
#         df_fi,
#         family = binomial(link = "probit"),
#         control = glmerControl(optimizer = "optimx", 
#                                optCtrl = list(method = "nlminb", 
#                                               starttests = FALSE, 
#                                               kkt = FALSE)))
# saveRDS(lmm_fi_d_etd2, "lmm_fi_d_etd2.rds")

## Extended model3 ####
# lmm_fi_d_etd3 <-
#   glmer(isSame ~ Congruency * SD + Cue +
#           (0 + SD_C + # ConInc + IncIso +
#              ConInc_SD + IncIso_SD | Subject) +
#           (0 + SD_C + # ConInc + IncIso +
#              ConInc_SD | StimGroup), # + IncIso_SD
#         df_fi,
#         family = binomial(link = "probit"),
#         control = glmerControl(optimizer = "optimx",
#                                optCtrl = list(method = "nlminb",
#                                               starttests = FALSE,
#                                               kkt = FALSE)))
# saveRDS(lmm_fi_d_etd3, "lmm_fi_d_etd3.rds")

## Extended model4 ####
# lmm_fi_d_etd4 <-
#   glmer(isSame ~ Congruency * SD + Cue +
#           (0 + SD_C + # ConInc + IncIso +
#              ConInc_SD | Subject) + # + IncIso_SD
#           (0 + SD_C + # ConInc + IncIso +
#              ConInc_SD | StimGroup), # + IncIso_SD
#         df_fi,
#         family = binomial(link = "probit"),
#         control = glmerControl(optimizer = "optimx",
#                                optCtrl = list(method = "nlminb",
#                                               starttests = FALSE,
#                                               kkt = FALSE)))
# saveRDS(lmm_fi_d_etd4, "lmm_fi_d_etd4.rds")

## session information
sessionInfo()


