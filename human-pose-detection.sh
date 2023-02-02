#!/bin/bash

source /home/$USER/anaconda3/etc/profile.d/conda.sh
conda activate openvino

open_model_zoo_dir="/home/$USER/open_model_zoo"
model_dir="/home/$USER/open_model_zoo/demos/human_pose_estimation_demo/python"

cd $model_dir
mkdir models
cd models 

wget -c https://storage.openvinotoolkit.org/repositories/open_model_zoo/2022.3/models_bin/1/human-pose-estimation-0005/FP32/human-pose-estimation-0005.xml
wget -c https://storage.openvinotoolkit.org/repositories/open_model_zoo/2022.3/models_bin/1/human-pose-estimation-0005/FP32/human-pose-estimation-0005.bin
wget -c https://raw.githubusercontent.com/openvinotoolkit/open_model_zoo/master/demos/human_pose_estimation_demo/python/human_pose_estimation_demo.py

cd ..
wget -c https://storage.openvinotoolkit.org/data/test_data/videos/people-detection.mp4

python3 human_pose_estimation_demo.py \
  -d CPU \
  -i $model_dir/people-detection.mp4 \
  -m $model_dir/models/human-pose-estimation-0005.xml \
  -at ae