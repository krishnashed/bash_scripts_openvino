#!/bin/bash

source /home/$USER/anaconda3/etc/profile.d/conda.sh
conda activate openvino

open_model_zoo_dir="/home/$USER/open_model_zoo"
model_dir="/home/$USER/open_model_zoo/demos/text_to_speech_demo/python"

cd $model_dir
mkdir models
cd models 

wget -c https://storage.openvinotoolkit.org/repositories/open_model_zoo/2022.3/models_bin/1/text-to-speech-en-0001/text-to-speech-en-0001-regression/FP32/text-to-speech-en-0001-regression.xml
wget -c https://storage.openvinotoolkit.org/repositories/open_model_zoo/2022.3/models_bin/1/text-to-speech-en-0001/text-to-speech-en-0001-regression/FP32/text-to-speech-en-0001-regression.bin
wget -c https://storage.openvinotoolkit.org/repositories/open_model_zoo/2022.3/models_bin/1/text-to-speech-en-0001/text-to-speech-en-0001-generation/FP32/text-to-speech-en-0001-generation.bin
wget -c https://storage.openvinotoolkit.org/repositories/open_model_zoo/2022.3/models_bin/1/text-to-speech-en-0001/text-to-speech-en-0001-generation/FP32/text-to-speech-en-0001-generation.xml
wget -c https://storage.openvinotoolkit.org/repositories/open_model_zoo/2022.3/models_bin/1/text-to-speech-en-0001/text-to-speech-en-0001-duration-prediction/FP32/text-to-speech-en-0001-duration-prediction.xml
wget -c https://storage.openvinotoolkit.org/repositories/open_model_zoo/2022.3/models_bin/1/text-to-speech-en-0001/text-to-speech-en-0001-duration-prediction/FP32/text-to-speech-en-0001-duration-prediction.bin

cd ..
wget -c https://raw.githubusercontent.com/krishnashed/data_for_openvino_models/main/text.txt

# pip install tqdm
# pip install inflect

python3 text_to_speech_demo.py \
    -i $model_dir/text.txt \
    -o $model_dir/audio.wav \
    -m_duration $model_dir/models/text-to-speech-en-0001-duration-prediction.xml \
    -m_forward $model_dir/models/text-to-speech-en-0001-regression.xml \
    -m_melgan $model_dir/models/text-to-speech-en-0001-generation.xml