export HF_ENDPOINT=https://hf-mirror.com
# 模型
huggingface-cli download --resume-download openai/clip-vit-large-patch14-336 --local-dir /remote-home1/share/models/vision_encoder/clip-vit-large-patch14-336-openai --local-dir-use-symlinks False
# 数据集
# huggingface-cli download --repo-type dataset --resume-download liuhaotian/LLaVA-Pretrain --local-dir wikitext --local-dir-use-symlinks False