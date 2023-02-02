#!/bin/bash

source /home/$USER/anaconda3/etc/profile.d/conda.sh
conda activate openvino

open_model_zoo_dir="/home/$USER/open_model_zoo"
model_dir="/home/$USER/open_model_zoo/demos/object_detection_demo/python"

cd $model_dir
mkdir models
cd models 

wget -c https://storage.openvinotoolkit.org/repositories/open_model_zoo/2022.3/models_bin/1/person-detection-0303/FP32/person-detection-0303.xml
wget -c https://storage.openvinotoolkit.org/repositories/open_model_zoo/2022.3/models_bin/1/person-detection-0303/FP32/person-detection-0303.bin

cd ..
wget -c https://storage.openvinotoolkit.org/data/test_data/videos/people-detection.mp4

python3 object_detection_demo.py -i $model_dir/people-detection.mp4 -m $model_dir/models/person-detection-0303.xml -at ssd --labels $open_model_zoo_dir/data/dataset_classes/voc_20cl_bkgr.txt