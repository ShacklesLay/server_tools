#!/bin/bash

#SBATCH --partition=a800
#SBATCH --output=/remote-home/pywang/Ckun/run_jupyter.out 
#SBATCH --job-name=run_jupyter
#SBATCH --nodes=1
#SBATCH --gres=gpu:1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=16
#SBATCH --mem-per-cpu=8G
# 开启jupyter服务使用以下指令
srun --nodelist=slurmd-5 --job-name=inference --gres=gpu:1 jupyter lab --ip 0.0.0.0 --port=30005
# # srun --job-name=bash --gres=gpu:4 --cpus-per-task=32 jupyter lab --ip 0.0.0.0 --port=30005
# srun --partition=a800 --job-name=bash --gres=gpu:1 --cpus-per-task=8 jupyter lab --ip 0.0.0.0 --port=30011
# # srun --nodelist=$1 jupyter lab --ip 0.0.0.0 --port=$2

# 申请实验室机器使用以下两条指令
salloc --partition=a800 --job-name=bash --gres=gpu:4 --cpus-per-task=8
srun --pty --jobid=<JOBID> bash
