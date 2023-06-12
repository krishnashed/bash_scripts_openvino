person-vehicle-bike-detection.sh 
#!/bin/bash
 
source /home/$USER/anaconda3/etc/profile.d/conda.sh
conda activate openvino
 
#sudo apt install ffmpeg libsm6 libxext6 -y
 
open_model_zoo_dir="/home/$USER/open_model_zoo"
model_dir="/home/$USER/open_model_zoo/demos/object_detection_demo/python"
 
cd $model_dir
mkdir models
cd models 
 
wget -c https://storage.openvinotoolkit.org/repositories/open_model_zoo/2023.0/models_bin/1/person-vehicle-bike-detection-2000/FP32/person-vehicle-bike-detection-2000.xml
wget -c https://storage.openvinotoolkit.org/repositories/open_model_zoo/2023.0/models_bin/1/person-vehicle-bike-detection-2000/FP32/person-vehicle-bike-detection-2000.bin
 
cd ..
 
wget https://storage.openvinotoolkit.org/test_data/videos/person-bicycle-car-detection.mp4
 
python3 object_detection_demo.py -i person-bicycle-car-detection.mp4 -m models/person-vehicle-bike-detection-2000.xml -at ssd
