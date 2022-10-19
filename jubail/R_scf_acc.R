# General description ####
# This script loads data and fit the GLMM ins Jubail (High-performance computing at NYUAD).

# load packages #
library(lme4)
library(lmerTest)
library(optimx)

df_scf <- readRDS("df_scf.rds")

# Part-whole effect ####

## Zero-correlation-parameter model ####
# lmm_scf_acc_zcp <- 
#   glmer(Correct ~ Alignment + 
#           (Ali_C || Subject) +
#           (Ali_C || StimGroup),
#         df_scf,
#         family = binomial(link = "logit"),
#         control = glmerControl(optimizer = "optimx", 
#                                optCtrl = list(method = "nlminb", 
#                                               starttests = FALSE, 
#                                               kkt = FALSE)))
# saveRDS(lmm_scf_acc_zcp, "lmm_scf_acc_zcp.rds")

## Extended model ####
# (This is essentially the maximal model.)
# lmm_scf_acc_etd <- 
#   glmer(Correct ~ Alignment + 
#           (Ali_C | Subject) +
#           (Ali_C | StimGroup),
#         df_scf,
#         family = binomial(link = "logit"),
#         control = glmerControl(optimizer = "optimx", 
#                                optCtrl = list(method = "nlminb", 
#                                               starttests = FALSE, 
#                                               kkt = FALSE)))
# saveRDS(lmm_scf_acc_etd, "lmm_scf_acc_etd.rds")

## Extended model ####
# lmm_scf_acc_etd2 <- 
#   glmer(Correct ~ Alignment + 
#           (Ali_C | Subject) +
#           (0 + Ali_C | StimGroup),
#         df_scf,
#         family = binomial(link = "logit"),
#         control = glmerControl(optimizer = "optimx", 
#                                optCtrl = list(method = "nlminb", 
#                                               starttests = FALSE, 
#                                               kkt = FALSE)))
# saveRDS(lmm_scf_acc_etd2, "lmm_scf_acc_etd2.rds")

## session information
sessionInfo()


