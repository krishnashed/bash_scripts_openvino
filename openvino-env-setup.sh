#!/bin/bash

cd ~/

wget https://raw.githubusercontent.com/krishnashed/data_for_openvino_models/main/openvino.yml

conda env create --name openvino -f openvino.yml

git clone https://github.com/openvinotoolkit/open_model_zoo.git