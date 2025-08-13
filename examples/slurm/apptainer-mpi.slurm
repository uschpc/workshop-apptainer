#!/bin/bash

#SBATCH --account=<project_id>
#SBATCH --partition=main
#SBATCH --nodes=2
#SBATCH --ntasks-per-node=8
#SBATCH --cpus-per-task=1
#SBATCH --mem=16G
#SBATCH --time=1:00:00

module purge
module load apptainer/1.4.2

srun --mpi=pmi2 -n $SLURM_NTASKS apptainer exec mpich.sif /opt/mpi_program
