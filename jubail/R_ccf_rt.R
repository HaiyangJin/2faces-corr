# General description ####
# This script loads data and fit the GLMM ins Jubail (High-performance computing at NYUAD).

# load packages #
library(dplyr)
library(lme4)
library(lmerTest)

df_ccf <- readRDS("df_ccf.rds")

# Part-whole effect ####

## Zero-correlation-parameter model ####
# message("Fitting the zcp model...\noutput: lmm_ccf_d_zcp")
# lmm_ccf_rt_zcp <- 
#   lmer(log(RT) ~ Congruency * Alignment + SD + Cue + 
#          (Con_C + Ali_C + Con_Ali || Subject) +
#          (Con_C + Ali_C + Con_Ali || StimGroup),
#        filter(df_ccf, Correct),
#        control = lmerControl(optCtrl = list(maxfun = 1e7)))
# saveRDS(lmm_ccf_rt_zcp, "lmm_ccf_rt_zcp.rds")

## Reduced model ####
# message("Fitting the rdc model...\noutput: lmm_ccf_rt_rdc")
# lmm_ccf_rt_rdc <- 
#   lmer(log(RT) ~ Congruency * Alignment + SD + Cue + 
#          (Con_C + Ali_C + Con_Ali || Subject) +
#          (Con_C + Ali_C || StimGroup), # + Con_Ali
#        filter(df_ccf, Correct),
#        control = lmerControl(optCtrl = list(maxfun = 1e7)))
# saveRDS(lmm_ccf_rt_rdc, "lmm_ccf_rt_rdc.rds")

## Extended model ####
# message("Fitting the etd model...\noutput: lmm_ccf_rt_etd")
# lmm_ccf_rt_etd <-
#   lmer(log(RT) ~ Congruency * Alignment + SD + Cue + 
#          (Con_C + Ali_C + Con_Ali | Subject) +
#          (Con_C + Ali_C | StimGroup), # + Con_Ali
#        filter(df_ccf, Correct),
#        control = lmerControl(optCtrl = list(maxfun = 1e7)))
# saveRDS(lmm_ccf_rt_etd, "lmm_ccf_rt_etd.rds")

## Extended model2 ####
# message("Fitting the etd2 model...\noutput: lmm_ccf_rt_etd2")
# lmm_ccf_rt_etd2 <- 
#   lmer(log(RT) ~ Congruency * Alignment + SD + Cue + 
#          (Ali_C + Con_Ali | Subject) + # Con_C + 
#          (Con_C + Ali_C | StimGroup), # + Con_Ali
#        filter(df_ccf, Correct),
#        control = lmerControl(optCtrl = list(maxfun = 1e7)))
# saveRDS(lmm_ccf_rt_etd2, "lmm_ccf_rt_etd2.rds")

## Extended model3 ####
# message("Fitting the etd3 model...\noutput: lmm_ccf_rt_etd3")
# lmm_ccf_rt_etd3 <- 
#   lmer(log(RT) ~ Congruency * Alignment + SD + Cue + 
#          (Ali_C + Con_Ali | Subject) + # Con_C + 
#          (Ali_C | StimGroup), # + Con_Ali + Con_C + 
#        filter(df_ccf, Correct),
#        control = lmerControl(optCtrl = list(maxfun = 1e7)))
# saveRDS(lmm_ccf_rt_etd3, "lmm_ccf_rt_etd3.rds")

## session information
sessionInfo()


