# General description ####
# This script loads data and fit the GLMM ins Jubail (High-performance computing at NYUAD).

# load packages #
library(dplyr)
library(lme4)
library(lmerTest)

df_pw <- readRDS("df_pw.rds")

# Part-whole effect ####

## Zero-correlation-parameter model ####
# message("Fitting the zcp model...\noutput: lmm_pw_rt_zcp")
# lmm_pw_rt_zcp <- 
#   lmer(log(RT) ~ PW * Feature + 
#          (PW_C + Feature_C + PW_Feature || Subject) +
#          (PW_C + Feature_C + PW_Feature || StimGroup),
#        filter(df_pw, Correct),
#        control = lmerControl(optCtrl = list(maxfun = 1e7)))
# saveRDS(lmm_pw_rt_zcp, "lmm_pw_rt_zcp.rds")


## Extended model ####
# message("Fitting the etd model...\noutput: lmm_pw_rt_etd")
# # (This is also the maximal model.)
# lmm_pw_rt_etd <- 
#   lmer(log(RT) ~ PW * Feature + 
#          (PW_C + Feature_C + PW_Feature | Subject) +
#          (PW_C + Feature_C + PW_Feature | StimGroup),
#        filter(df_pw, Correct),
#        control = lmerControl(optCtrl = list(maxfun = 1e7)))
# saveRDS(lmm_pw_rt_etd, "lmm_pw_rt_etd.rds")

## session information
sessionInfo()


