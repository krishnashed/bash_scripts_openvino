#!/bin/bash

source /home/$USER/anaconda3/etc/profile.d/conda.sh
conda activate openvino

open_model_zoo_dir="/home/$USER/open_model_zoo"
model_dir="/home/$USER/open_model_zoo/demos/segmentation_demo/python"

cd $model_dir
mkdir models
cd models 

wget -c https://storage.openvinotoolkit.org/repositories/open_model_zoo/2022.3/models_bin/1/semantic-segmentation-adas-0001/FP32/semantic-segmentation-adas-0001.bin
wget -c https://storage.openvinotoolkit.org/repositories/open_model_zoo/2022.3/models_bin/1/semantic-segmentation-adas-0001/FP32/semantic-segmentation-adas-0001.xml

cd ..
wget -c https://storage.openvinotoolkit.org/data/test_data/videos/classroom.mp4

python3 segmentation_demo.py -d CPU -i $model_dir/classroom.mp4 -at segmentation -m $model_dir/models/semantic-segmentation-adas-0001.xml