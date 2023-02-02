#!/bin/bash

source /home/$USER/anaconda3/etc/profile.d/conda.sh
conda activate openvino

open_model_zoo_dir="/home/$USER/open_model_zoo"
model_dir="/home/$USER/open_model_zoo/demos/image_retrieval_demo/python"

cd $model_dir
mkdir models
cd models 

wget -c https://storage.openvinotoolkit.org/repositories/open_model_zoo/2022.3/models_bin/1/image-retrieval-0001/FP32/image-retrieval-0001.xml
wget -c https://storage.openvinotoolkit.org/repositories/open_model_zoo/2022.3/models_bin/1/image-retrieval-0001/FP32/image-retrieval-0001.bin

cd ..
git clone https://github.com/19900531/test.git
cd test
wget -c https://raw.githubusercontent.com/openvinotoolkit/training_extensions/089de2f24667329a58e8560ed4e01ef203e99def/misc/tensorflow_toolkit/image_retrieval/data/gallery/gallery.txt

cd ..

# pip install scikit-learn

python image_retrieval_demo.py -m ./models/image-retrieval-0001.xml -i ./test/7f8bd393-0f04-43fe-8cb8-4e0cde7305e6.dav -g ./test/gallery.txt