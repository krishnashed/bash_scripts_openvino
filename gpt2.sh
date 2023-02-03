#!/bin/bash

source /home/$USER/anaconda3/etc/profile.d/conda.sh
conda activate openvino

open_model_zoo_dir="/home/$USER/public/gpt-2"
model_dir="/home/$USER/open_model_zoo/demos/gpt2_text_prediction_demo/python"

cd ~/

omz_downloader --name gpt-2

omz_converter --name gpt-2 --precisions FP32

cd $model_dir

python gpt2_text_prediction_demo.py --model=$open_model_zoo_dir/FP32/gpt-2.xml --vocab=$open_model_zoo_dir/gpt2/vocab.json --merges=$open_model_zoo_dir/gpt2/merges.txt