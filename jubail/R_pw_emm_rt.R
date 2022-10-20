# General description ####
# This script loads data and fit the GLMM ins Jubail (High-performance computing at NYUAD).

# load packages #
library(emmeans)

df_pw <- readRDS("df_pw.rds")

# Part-whole effect ####
lmm_pw_rt_opt <- readRDS("lmm_pw_rt_etd.rds")

emm_pw_rt <- emmeans(lmm_pw_rt_opt, ~ PW + Feature, type = "response",
                     lmer.df = "kenward-roger", pbkrtest.limit = 36000)
saveRDS(emm_pw_rt, "emm_pw_rt.rds")

## session information
sessionInfo()


