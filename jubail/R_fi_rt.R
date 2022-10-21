# General description ####
# This script loads data and fit the GLMM ins Jubail (High-performance computing at NYUAD).

# load packages #
library(dplyr)
library(lme4)
library(lmerTest)

df_fi <- readRDS("df_fi.rds")

# Part-whole effect ####

## Zero-correlation-parameter model ####
# message("Fitting the zcp model...\noutput: lmm_fi_rt_zcp")
# lmm_fi_rt_zcp <- 
#   lmer(log(RT) ~ Congruency + SD + Cue +
#          (ConInc + IncIso || Subject) +
#          (ConInc + IncIso || StimGroup),
#        filter(df_fi, Correct),
#        control = lmerControl(optCtrl = list(maxfun = 1e7)))
# saveRDS(lmm_fi_rt_zcp, "lmm_fi_rt_zcp.rds")

## Extended model ####
# message("Fitting the etd model...\noutput: lmm_fi_rt_etd")
# lmm_fi_rt_etd <- 
#   lmer(log(RT) ~ Congruency + SD + Cue +
#          (ConInc + IncIso | Subject) +
#          (ConInc + IncIso | StimGroup),
#        filter(df_fi, Correct),
#        control = lmerControl(optCtrl = list(maxfun = 1e7)))
# saveRDS(lmm_fi_rt_etd, "lmm_fi_rt_etd.rds")

## Extended model2 ####
# message("Fitting the etd2 model...\noutput: lmm_fi_rt_etd2")
# lmm_fi_rt_etd2 <- 
#   lmer(log(RT) ~ Congruency + SD + Cue +
#          (ConInc + IncIso | Subject) +
#          (0 + ConInc + IncIso | StimGroup), 
#        filter(df_fi, Correct),
#        control = lmerControl(optCtrl = list(maxfun = 1e7)))
# saveRDS(lmm_fi_rt_etd2, "lmm_fi_rt_etd2.rds")

## Extended model3 ####
# message("Fitting the etd3 model...\noutput: lmm_fi_rt_etd3")
# lmm_fi_rt_etd3 <- 
#   lmer(log(RT) ~ Congruency + SD + Cue +
#          (ConInc + IncIso | Subject) +
#          (0 + IncIso | StimGroup), # ConInc + 
#        filter(df_fi, Correct),
#        control = lmerControl(optCtrl = list(maxfun = 1e7)))
# saveRDS(lmm_fi_rt_etd3, "lmm_fi_rt_etd3.rds")

## session information
sessionInfo()


