#!/bin/bash

#SBATCH --account=<project_id>
#SBATCH --partition=gpu
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=8
#SBATCH --gpus-per-task=a100:1
#SBATCH --mem=32G
#SBATCH --time=1:00:00

module purge
module load apptainer/1.4.2

apptainer exec --nv --cleanenv --no-home pytorch.sif python script.py
