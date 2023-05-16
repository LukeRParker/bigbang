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

git lfs install
git clone git@hf.co:TheBloke/GPT4All-13B-snoozy-GGML
