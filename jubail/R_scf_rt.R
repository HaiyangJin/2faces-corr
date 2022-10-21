# General description ####
# This script loads data and fit the GLMM ins Jubail (High-performance computing at NYUAD).

# load packages #
library(dplyr)
library(lme4)
library(lmerTest)

df_scf <- readRDS("df_scf.rds")

# Standard composite effect ####

## Zero-correlation-parameter model ####
# message("Fitting the zcp model...\noutput: lmm_scf_rt_zcp")
# lmm_scf_rt_zcp <- 
#   lmer(log(RT) ~ Alignment + 
#          (Ali_C || Subject) +
#          (Ali_C || StimGroup),
#        filter(df_scf, Correct),
#        control = lmerControl(optCtrl = list(maxfun = 1e7)))
# saveRDS(lmm_scf_rt_zcp, "lmm_scf_rt_zcp.rds")

## Extended model ####
# message("Fitting the etd model...\noutput: lmm_scf_rt_etd")
# # (This is essentially the maximal model.)
# lmm_scf_rt_etd <-
#   lmer(log(RT) ~ Alignment +
#          (Ali_C | Subject) +
#          (Ali_C | StimGroup),
#        filter(df_scf, Correct),
#        control = lmerControl(optCtrl = list(maxfun = 1e7)))
# saveRDS(lmm_scf_rt_etd, "lmm_scf_rt_etd.rds")

## session information
sessionInfo()


