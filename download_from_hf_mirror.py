import os
from huggingface_hub import snapshot_download
os.environ['HF_ENDPOINT'] = 'https://hf-mirror.com'

files = [f"sa_0000{i:02d}.tar" for i in range(0, 51)]

snapshot_download(
  repo_id="sailvideo/SA-1B",
  repo_type='dataset',
  local_dir="/home/save_dir/cktan/data/SA-50",
  local_dir_use_symlinks=False,
  allow_patterns=files
)