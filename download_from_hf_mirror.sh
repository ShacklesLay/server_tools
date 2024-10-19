#!/bin/bash

#SBATCH --partition=a800

#SBATCH --job-name=download
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=8
#SBATCH --mem-per-cpu=2G

#SBATCH --chdir=/remote-home1/cktan
#SBATCH --output=./log.log

export HF_ENDPOINT=https://hf-mirror.com
# 模型
srun huggingface-cli download --resume-download BAAI/Emu3-Chat --local-dir /remote-home1/share/models/Emu3-Chat --local-dir-use-symlinks False
# 数据集
# huggingface-cli download --repo-type dataset --resume-download liuhaotian/LLaVA-Pretrain --local-dir wikitext --local-dir-use-symlinks False

sync && echo "success"