# General description ####
# This script loads data and fit the GLMM ins Jubail (High-performance computing at NYUAD).

# load packages #
library(lme4)
library(lmerTest)

df_ccf <- readRDS("df_ccf.rds")

# Complete composite effect ####

## Zero-correlation-parameter model ####
# message("Fitting the zcp model...\noutput: lmm_ccf_d_zcp")
# lmm_ccf_d_zcp <- 
#   glmer(isSame ~ Congruency * Alignment * SD + Cue +
#           (Con_C + Ali_C + SD_C + 
#              Con_Ali + Con_SD + Ali_SD + 
#              Con_Ali_SD || Subject) +
#           (Con_C + Ali_C + SD_C + 
#              Con_Ali + Con_SD + Ali_SD + 
#              Con_Ali_SD || StimGroup),
#         df_ccf,
#         family = binomial(link = "probit"),
#         control = glmerControl(optCtrl = list(maxfun = 1e7)))
# saveRDS(lmm_ccf_d_zcp, "lmm_ccf_d_zcp.rds")

## Reduced model ####
# message("Fitting the rdc model...\noutput: lmm_ccf_d_rdc")
# lmm_ccf_d_rdc <- 
#   glmer(isSame ~ Congruency * Alignment * SD + Cue +
#           (Ali_C + SD_C + # Con_C + 
#              Con_SD +  # Con_Ali + Ali_SD +
#              Con_Ali_SD || Subject) +
#           (Con_C + Ali_C + SD_C + 
#              Con_Ali + Con_SD + Ali_SD # + 
#            || StimGroup), # Con_Ali_SD
#         df_ccf,
#         family = binomial(link = "probit"),
#         control = glmerControl(optCtrl = list(maxfun = 1e7)))
# saveRDS(lmm_ccf_d_rdc, "lmm_ccf_d_rdc.rds")

## Extended model ####
# message("Fitting the etd model...\noutput: lmm_ccf_d_etd")
# lmm_ccf_d_etd <-
#   glmer(isSame ~ Congruency * Alignment * SD + Cue +
#           (Ali_C + SD_C + # Con_C + 
#              Con_SD +  # Con_Ali + Ali_SD +
#              Con_Ali_SD | Subject) +
#           (Con_C + Ali_C + SD_C + 
#              Con_Ali + Con_SD + Ali_SD # + 
#            | StimGroup), # Con_Ali_SD
#         df_ccf,
#         family = binomial(link = "probit"),
#         control = glmerControl(optCtrl = list(maxfun = 1e7)))
# saveRDS(lmm_ccf_d_etd, "lmm_ccf_d_etd.rds")

## Extended model2 ####
# message("Fitting the etd2 model...\noutput: lmm_ccf_d_etd2")
# lmm_ccf_d_etd2 <-
#   glmer(isSame ~ Congruency * Alignment * SD + Cue +
#           (SD_C + # Con_C + Ali_C + 
#              Con_SD +  # Con_Ali + Ali_SD +
#              Con_Ali_SD | Subject) +
#           (SD_C + # Con_C + Ali_C + 
#              Con_SD  # + + Ali_SD Con_Ali + 
#            | StimGroup), # Con_Ali_SD
#         df_ccf,
#         family = binomial(link = "probit"),
#         control = glmerControl(optCtrl = list(maxfun = 1e7)))
# saveRDS(lmm_ccf_d_etd2, "lmm_ccf_d_etd2.rds")

## Extended model3 ####
# message("Fitting the etd3 model...\noutput: lmm_ccf_d_etd3")
# lmm_ccf_d_etd3 <-
#   glmer(isSame ~ Congruency * Alignment * SD + Cue +
#           (0 + SD_C + # Con_C + Ali_C + 
#              Con_SD +  # Con_Ali + Ali_SD +
#              Con_Ali_SD | Subject) +
#           (SD_C # +  Con_C + Ali_C + 
#            # + Con_SD + Ali_SD Con_Ali + 
#            | StimGroup), # Con_Ali_SD
#         df_ccf,
#         family = binomial(link = "probit"),
#         control = glmerControl(optCtrl = list(maxfun = 1e7)))
# saveRDS(lmm_ccf_d_etd3, "lmm_ccf_d_etd3.rds")

## Extended model4 ####
# message("Fitting the etd4 model...\noutput: lmm_ccf_d_etd4")
# lmm_ccf_d_etd4 <-
#   glmer(isSame ~ Congruency * Alignment * SD + Cue +
#           (0 + SD_C + # Con_C + Ali_C + 
#              Con_SD  # Con_Ali + Ali_SD + + 
#            | Subject) + # Con_Ali_SD
#           (SD_C # +  Con_C + Ali_C + 
#            # + Con_SD + Ali_SD Con_Ali + 
#            | StimGroup), # Con_Ali_SD
#         df_ccf,
#         family = binomial(link = "probit"),
#         control = glmerControl(optCtrl = list(maxfun = 1e7)))
# saveRDS(lmm_ccf_d_etd4, "lmm_ccf_d_etd4.rds")

## session information
sessionInfo()


