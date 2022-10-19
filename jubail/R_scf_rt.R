# General description ####
# This script loads data and fit the GLMM ins Jubail (High-performance computing at NYUAD).

# load packages #
library(dplyr)
library(lme4)
library(lmerTest)
library(optimx)

df_scf <- readRDS("df_scf.rds")

# Part-whole effect ####

## Zero-correlation-parameter model ####
# lmm_scf_rt_zcp <- 
#   lmer(log(RT) ~ Alignment + 
#          (Ali_C || Subject) +
#          (Ali_C || StimGroup),
#        filter(df_scf, Correct))
# saveRDS(lmm_scf_rt_zcp, "lmm_scf_rt_zcp.rds")

## Extended model ####
# (This is essentially the maximal model.)
# lmm_scf_rt_etd <-
#   lmer(log(RT) ~ Alignment +
#          (Ali_C | Subject) +
#          (Ali_C | StimGroup),
#        filter(df_scf, Correct),
#        control = lmerControl(optimizer = "optimx",
#                              optCtrl = list(method = "nlminb",
#                                             starttests = FALSE,
#                                             kkt = FALSE)))
# saveRDS(lmm_scf_rt_etd, "lmm_scf_rt_etd.rds")

## session information
sessionInfo()


