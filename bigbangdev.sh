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


git lfs clone https://huggingface.co/TheBloke/GPT4All-13B-snoozy-GGML/blob/main/GPT4All-13B-snoozy.ggml.q5_0.bin
