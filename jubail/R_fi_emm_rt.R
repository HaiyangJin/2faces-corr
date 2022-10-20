# General description ####
# This script loads data and fit the GLMM ins Jubail (High-performance computing at NYUAD).

# load packages #
library(emmeans)

df_fi <- readRDS("df_fi.rds")

# Part-whole effect ####
lmm_fi_rt_opt <- readRDS("lmm_fi_rt_etd3.rds")

emm_fi_rt <- emmeans(lmm_fi_rt_opt, ~ Congruency, type = "response") # ,
# lmer.df = "kenward-roger", pbkrtest.limit = 83000
saveRDS(emm_fi_rt, "emm_fi_rt.rds")

## session information
sessionInfo()


