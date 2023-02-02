#!/bin/bash

source /home/$USER/anaconda3/etc/profile.d/conda.sh
conda activate openvino

open_model_zoo_dir="/home/$USER/open_model_zoo"
model_dir="/home/$USER/open_model_zoo/demos/handwritten_text_recognition_demo/python"

cd $model_dir
mkdir models
cd models 

wget -c https://storage.openvinotoolkit.org/repositories/open_model_zoo/2022.3/models_bin/1/handwritten-english-recognition-0001/FP32/handwritten-english-recognition-0001.xml
wget -c https://storage.openvinotoolkit.org/repositories/open_model_zoo/2022.3/models_bin/1/handwritten-english-recognition-0001/FP32/handwritten-english-recognition-0001.bin
wget -c https://storage.openvinotoolkit.org/repositories/open_model_zoo/2022.3/models_bin/1/handwritten-japanese-recognition-0001/FP32/handwritten-japanese-recognition-0001.xml
wget -c https://storage.openvinotoolkit.org/repositories/open_model_zoo/2022.3/models_bin/1/handwritten-japanese-recognition-0001/FP32/handwritten-japanese-recognition-0001.bin

cd ..

python handwritten_text_recognition_demo.py -d CPU  -i $model_dir/data/handwritten_english_test.png   -m $model_dir/models/handwritten-english-recognition-0001.xml    -cl $open_model_zoo_dir/data/dataset_classes/gnhk.txt