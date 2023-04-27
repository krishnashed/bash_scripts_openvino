#!/bin/bash

source /home/$USER/anaconda3/etc/profile.d/conda.sh
conda activate openvino

sudo apt-get update
sudo apt upgrade -y
sudo apt-get install ffmpeg
pip3 install numpy jupyter 

cd ~/

git clone https://github.com/krishnashed/safety-gear-detector-python.git

cd safety-gear-detector-python/application/

python safety_gear_detector.py -m ~/safety-gear-detector-python/resources/worker-safety-mobilenet/person-detection-retail-0013.xml -sm ~/safety-gear-detector-python/resources/worker-safety-mobilenet/worker_safety_mobilenet.xml