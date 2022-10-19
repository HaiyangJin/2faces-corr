# General description ####
# This script loads data and fit the GLMM ins Jubail (High-performance computing at NYUAD).

# load packages #
library(lme4)
library(lmerTest)
library(optimx)

df_pw <- readRDS("df_pw.rds")

# Part-whole effect ####

## Zero-correlation-parameter model ####
# lmm_pw_acc_zcp <- 
#   glmer(Correct ~ PW * Feature + 
#           (PW_C + Feature_C + PW_Feature || Subject) +
#           (PW_C + Feature_C + PW_Feature || StimGroup),
#         df_pw,
#         family = binomial(link = "logit"),
#         control = glmerControl(optimizer = "optimx", 
#                                optCtrl = list(method = "nlminb", 
#                                               starttests = FALSE, 
#                                               kkt = FALSE)))
# saveRDS(lmm_pw_acc_zcp, "lmm_pw_acc_zcp.rds")

## Reduced model ####
# lmm_pw_acc_rdc <- 
#   glmer(Correct ~ PW * Feature + 
#           (PW_C + Feature_C || Subject) +
#           (PW_C + Feature_C + PW_Feature || StimGroup),
#         df_pw,
#         family = binomial(link = "logit"),
#         control = glmerControl(optimizer = "optimx", 
#                                optCtrl = list(method = "nlminb", 
#                                               starttests = FALSE, 
#                                               kkt = FALSE)))
# saveRDS(lmm_pw_acc_rdc, "lmm_pw_acc_rdc.rds")

## Extended model ####
# lmm_pw_acc_etd <- 
#   glmer(Correct ~ PW * Feature + 
#           (PW_C + Feature_C | Subject) +
#           (PW_C + Feature_C + PW_Feature | StimGroup),
#         df_pw,
#         family = binomial(link = "logit"),
#         control = glmerControl(optimizer = "optimx", 
#                                optCtrl = list(method = "nlminb", 
#                                               starttests = FALSE, 
#                                               kkt = FALSE)))
# saveRDS(lmm_pw_acc_etd, "lmm_pw_acc_etd.rds")

## session information
sessionInfo()


