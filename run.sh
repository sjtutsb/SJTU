#!/bin/bash
#SBATCH -J ALEXNET
#SBATCH -p gpu
#SBATCH -N 1
#SBATCH --output=log.%j.out
#SBATCH --error=log.%j.err
#SBATCH -t 12:00:00
#SBATCH --gres=gpu:1
module load anaconda3/2019.07
source activate alexnet
python3 testModel.py -m folder -p tesModel