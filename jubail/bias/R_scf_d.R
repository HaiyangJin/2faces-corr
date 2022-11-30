# General description ####
# This script loads data and fit the GLMM ins Jubail (High-performance computing at NYUAD).

# load packages #
library(lme4)
library(lmerTest)

df_scf_d <- readRDS("df_scf_d.rds")

# Complete composite effect ####

## Zero-correlation-parameter model ####
# message("Fitting the zcp model...\noutput: lmm_scf_d_zcp")
# lmm_scf_d_zcp <- 
#   glmer(isSame ~ Alignment * SD +
#           (Ali_C + SD_C + 
#              Ali_SD || Subject) +
#           (Ali_C + SD_C + 
#              Ali_SD || StimGroup),
#         df_scf_d,
#         family = binomial(link = "probit"),
#         control = glmerControl(optCtrl = list(maxfun = 1e7)))
# saveRDS(lmm_scf_d_zcp, "lmm_scf_d_zcp.rds")

## Reduced model ####
# message("Fitting the rdc model...\noutput: lmm_scf_d_rdc")
# lmm_scf_d_rdc <- 
#   glmer(isSame ~ Alignment * SD +
#           (Ali_C + SD_C # + 
#            || Subject) + # Ali_SD
#           (Ali_C + SD_C # + 
#            || StimGroup), # Ali_SD
#         df_scf_d,
#         family = binomial(link = "probit"),
#         control = glmerControl(optCtrl = list(maxfun = 1e7)))
# saveRDS(lmm_scf_d_rdc, "lmm_scf_d_rdc.rds")

## Extended model ####
# message("Fitting the etd model...\noutput: lmm_scf_d_etd")
# lmm_scf_d_etd <-
#   glmer(isSame ~ Alignment * SD +
#           (Ali_C + SD_C # + 
#            | Subject) + # Ali_SD
#           (Ali_C + SD_C # + 
#            | StimGroup), # Ali_SD
#         df_scf_d,
#         family = binomial(link = "probit"),
#         control = glmerControl(optCtrl = list(maxfun = 1e7)))
# saveRDS(lmm_scf_d_etd, "lmm_scf_d_etd.rds")

## Extended model2 ####
message("Fitting the etd2 model...\noutput: lmm_scf_d_etd2")
lmm_scf_d_etd2 <-
  glmer(isSame ~ Alignment * SD +
          (Ali_C + SD_C # + 
           | Subject) + # Ali_SD
          (SD_C # + Ali_C + 
           | StimGroup), # Ali_SD
        df_scf_d,
        family = binomial(link = "probit"),
        control = glmerControl(optCtrl = list(maxfun = 1e7)))
saveRDS(lmm_scf_d_etd2, "lmm_scf_d_etd2.rds")

## Extended model3 ####
# message("Fitting the etd3 model...\noutput: lmm_scf_d_etd3")
# lmm_scf_d_etd3 <-
#   glmer(isSame ~ Congruency * Alignment * SD + Cue +
#           (0 + SD_C + # Con_C + Ali_C + 
#              Con_SD +  # Con_Ali + Ali_SD +
#              Con_Ali_SD | Subject) +
#           (SD_C # +  Con_C + Ali_C + 
#            # + Con_SD + Ali_SD Con_Ali + 
#            | StimGroup), # Con_Ali_SD
#         df_scf,
#         family = binomial(link = "probit"),
#         control = glmerControl(optCtrl = list(maxfun = 1e7)))
# saveRDS(lmm_scf_d_etd3, "lmm_scf_d_etd3.rds")

## Extended model4 ####
# message("Fitting the etd4 model...\noutput: lmm_scf_d_etd4")
# lmm_scf_d_etd4 <-
#   glmer(isSame ~ Congruency * Alignment * SD + Cue +
#           (0 + SD_C + # Con_C + Ali_C + 
#              Con_SD  # Con_Ali + Ali_SD + + 
#            | Subject) + # Con_Ali_SD
#           (SD_C # +  Con_C + Ali_C + 
#            # + Con_SD + Ali_SD Con_Ali + 
#            | StimGroup), # Con_Ali_SD
#         df_scf,
#         family = binomial(link = "probit"),
#         control = glmerControl(optCtrl = list(maxfun = 1e7)))
# saveRDS(lmm_scf_d_etd4, "lmm_scf_d_etd4.rds")

## session information
sessionInfo()


