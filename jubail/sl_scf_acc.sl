#!/bin/bash
#SBATCH --job-name=scf_acc
#SBATCH --mem=4GB  # only set this when the memory is larger than 4GB
#SBTACH --workdir=/scratch/hj23/2faces/jubail
#SBATCH --time=1-00:00:00
#SBATCH --mail-type=end  # ALL     start,end
#SBATCH --mail-user=haiyang.jin@nyu.edu
#SBATCH -o job.scf.acc.%J.out  ## #SBATCH -o %A_%a

# remove all loaded module
module purge

# use R with Conda
source /scratch/hj23/miniconda3/bin/activate
conda activate 2faces

# run the R script
Rscript R_scf_acc.R
