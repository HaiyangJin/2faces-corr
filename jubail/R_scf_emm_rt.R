# General description ####
# This script loads data and fit the GLMM ins Jubail (High-performance computing at NYUAD).

# load packages #
library(emmeans)

df_scf <- readRDS("df_scf.rds")

# Part-whole effect ####
lmm_scf_rt_opt <- readRDS("lmm_scf_rt_zcp.rds")

emm_scf_rt <- emmeans(lmm_scf_rt_opt, ~ Alignment, type="response",
                      lmer.df = "kenward-roger", pbkrtest.limit = 32000)
saveRDS(emm_scf_rt, "emm_scf_rt.rds")

## session information
sessionInfo()


