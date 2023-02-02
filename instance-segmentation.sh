#!/bin/bash

source /home/$USER/anaconda3/etc/profile.d/conda.sh
conda activate openvino

open_model_zoo_dir="/home/$USER/open_model_zoo"
model_dir="/home/$USER/open_model_zoo/demos/instance_segmentation_demo/python"

cd $model_dir
mkdir models
cd models 

wget -c https://storage.openvinotoolkit.org/repositories/open_model_zoo/2022.3/models_bin/1/instance-segmentation-security-0002/FP32/instance-segmentation-security-0002.bin
wget -c https://storage.openvinotoolkit.org/repositories/open_model_zoo/2022.3/models_bin/1/instance-segmentation-security-0002/FP32/instance-segmentation-security-0002.xml

cd ..
wget -c https://storage.openvinotoolkit.org/data/test_data/videos/classroom.mp4

python3 instance_segmentation_demo.py -m $model_dir/models/instance-segmentation-security-0002.xml --label $open_model_zoo_dir/data/dataset_classes/coco_80cl_bkgr.txt -i $model_dir/classroom.mp4