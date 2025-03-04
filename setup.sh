wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
bash Miniconda3-latest-Linux-x86_64.sh
source ~/.bashrc
eval "$(/home/ubuntu/miniconda3/bin/conda shell.bash hook)"
conda init
conda create -n py12 python=3.12
conda activate py12
pip install uv

git clone https://github.com/willccbb/verifiers.git
cd verifiers
uv sync
pip install torch
uv pip install flash-attn --no-build-isolation
source .venv/bin/activate