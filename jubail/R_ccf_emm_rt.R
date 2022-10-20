# General description ####
# This script loads data and fit the GLMM ins Jubail (High-performance computing at NYUAD).

# load packages #
library(emmeans)

df_ccf <- readRDS("df_ccf.rds")

# Part-whole effect ####
lmm_ccf_rt_opt <- readRDS("lmm_ccf_rt_rdc.rds")

emm_ccf_rt <- emmeans(lmm_ccf_rt_opt, ~ Congruency + Alignment, type = "response",
                      lmer.df = "kenward-roger", pbkrtest.limit = 110000)
saveRDS(emm_ccf_rt, "emm_ccf_rt.rds")

## session information
sessionInfo()


