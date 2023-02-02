#!/bin/bash

cd ~/

sudo apt install ffmpeg libsm6 libxext6 libgtk2.0-dev pkg-config '^libxcb.*-dev' libx11-xcb-dev libglu1-mesa-dev libxrender-dev libxi-dev libxkbcommon-dev libxkbcommon-x11-dev -y

wget https://raw.githubusercontent.com/krishnashed/data_for_openvino_models/main/openvino.yml

conda env create --name openvino -f openvino.yml

git clone https://github.com/openvinotoolkit/open_model_zoo.git