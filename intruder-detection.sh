#!/bin/bash

source /home/$USER/anaconda3/etc/profile.d/conda.sh
conda activate openvino

sudo apt-get update
sudo apt upgrade -y
sudo apt-get install ffmpeg
pip install numpy jupyter 

cd ~/

git clone https://github.com/krishnashed/intruder-detector-python.git

cd intruder-detector-python/application/

python intruder_detector.py -lb ~/intruder-detector-python/resources/labels.txt -m ~/intruder-detector-python/resources/person-vehicle-bike-detection-crossroad-0078.xml -d CPU