#!/bin/bash -l

#SBATCH
#SBATCH --job-name=Bench-RerF
#SBATCH --time=12:0:0
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=24
#SBATCH --partition=parallel,shared,lrgmem
#SBATCH --mail-type=end
#SBATCH --mail-user=jpatsol1@jhu.edu


## Run this with the following command
## sbatch --array=1-25%4 runMASTER.sh

module load gsl
module load R

Rscript single_dataset_run.R $SLURM_ARRAY_TASK_ID

