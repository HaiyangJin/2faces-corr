#!/bin/bash
#SBATCH --job-name=scf_emm_rt
#SBATCH --mem=130GB  # only set this when the memory is larger than 4GB
#SBTACH --workdir=/scratch/hj23/2faces/jubail
#SBATCH --time=12:00:00
#SBATCH --mail-type=end  # ALL     start,end
#SBATCH --mail-user=haiyang.jin@nyu.edu
#SBATCH -o job.emm.scf.rt.%J.out  ## #SBATCH -o %A_%a

# remove all loaded module
module purge

# use R with Conda
source /scratch/hj23/miniconda3/bin/activate
conda activate 2faces

# run the R script
Rscript R_scf_emm_rt.R
