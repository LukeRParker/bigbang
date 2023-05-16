#!/bin/bash
#wget -O - https://raw.githubusercontent.com/<username>/<project>/<branch>/<path>/<file> | sudo bash

sudo su
sudo apt update
sudo apt upgrade -y

sudo apt install software-properties-common
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt install python3.9

python3.9 -m pip install --upgrade pip
python3.9 pip install pandas
python3.9 pip install numpy
python3.9 pip install langchain
python3.9 pip install llama-cpp-python 
python3.9 pip install huggingface-hub 
python3.9 pip install openai
python3.9 pip install sqlalchemy 
python3.9 pip install scikit-learn 
python3.9 pip install wikipedia


git lfs clone https://huggingface.co/TheBloke/GPT4All-13B-snoozy-GGML/blob/main/GPT4All-13B-snoozy.ggml.q5_0.bin
