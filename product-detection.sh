#!/bin/bash

source /home/$USER/anaconda3/etc/profile.d/conda.sh
conda activate openvino

open_model_zoo_dir="/home/$USER/open_model_zoo"
model_dir="/home/$USER/open_model_zoo/demos/object_detection_demo/python"

cd $model_dir
mkdir models
cd models 

wget -c https://storage.openvinotoolkit.org/repositories/open_model_zoo/2022.3/models_bin/1/product-detection-0001/FP32/product-detection-0001.xml
wget -c https://storage.openvinotoolkit.org/repositories/open_model_zoo/2022.3/models_bin/1/product-detection-0001/FP32/product-detection-0001.bin

cd ..
wget -c https://github.com/krishnashed/data_for_openvino_models/raw/main/pringles.webp

python3 object_detection_demo.py -i $model_dir/pringles.webp -m $model_dir/models/product-detection-0001.xml -at ssd -o $model_dir/output.jpg