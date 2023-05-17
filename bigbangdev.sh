#!/bin/bash
#wget -O - https://raw.githubusercontent.com/<username>/<project>/<branch>/<path>/<file> | sudo bash

sudo su
sudo apt update
sudo apt upgrade -y
sudo apt install pip

pip install pandas
pip install numpy
pip install langchain
pip install llama-cpp-python 
pip install huggingface-hub 
pip install openai
pip install sqlalchemy 
pip install scikit-learn 
pip install wikipedia

sudo mkdir model

python3
from huggingface_hub import hf_hub_download
hf_hub_download(repo_id="TheBloke/GPT4All-13B-snoozy-GGML", filename="GPT4All-13B-snoozy.ggml.q5_0.bin", local_dir="model")

