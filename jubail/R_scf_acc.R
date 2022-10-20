# General description ####
# This script loads data and fit the GLMM ins Jubail (High-performance computing at NYUAD).

# load packages #
library(lme4)
library(lmerTest)

df_scf <- readRDS("df_scf.rds")

# Standard composite effect ####

## Zero-correlation-parameter model ####
# message("Fitting the zcp model...\noutput: lmm_scf_acc_zcp")
# lmm_scf_acc_zcp <-
#   glmer(Correct ~ Alignment + 
#           (Ali_C || Subject) +
#           (Ali_C || StimGroup),
#         df_scf,
#         family = binomial(link = "logit"),
#         control = glmerControl(optCtrl = list(maxfun = 1e7)))
# saveRDS(lmm_scf_acc_zcp, "lmm_scf_acc_zcp.rds")

## Extended model ####
# message("Fitting the etd model...\noutput: lmm_scf_acc_etd")
# # (This is essentially the maximal model.)
# lmm_scf_acc_etd <- 
#   glmer(Correct ~ Alignment + 
#           (Ali_C | Subject) +
#           (Ali_C | StimGroup),
#         df_scf,
#         family = binomial(link = "logit"),
#         control = glmerControl(optCtrl = list(maxfun = 1e7)))
# saveRDS(lmm_scf_acc_etd, "lmm_scf_acc_etd.rds")

## Extended model2 ####
# message("Fitting the etd2 model...\noutput: lmm_scf_acc_etd2")
# lmm_scf_acc_etd2 <- 
#   glmer(Correct ~ Alignment + 
#           (Ali_C | Subject) +
#           (0 + Ali_C | StimGroup),
#         df_scf,
#         family = binomial(link = "logit"),
#         control = glmerControl(optCtrl = list(maxfun = 1e7)))
# saveRDS(lmm_scf_acc_etd2, "lmm_scf_acc_etd2.rds")

## session information
sessionInfo()


