export HF_ENDPOINT=https://hf-mirror.com
# 模型
huggingface-cli download --resume-download gpt2 --local-dir gpt2 --local-dir-use-symlinks False
# 数据集
# huggingface-cli download --repo-type dataset --resume-download wikitext --local-dir wikitext --local-dir-use-symlinks False
