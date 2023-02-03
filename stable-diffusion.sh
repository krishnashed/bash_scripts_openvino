conda create -n stable_diffusion python=3.9 pip

source /home/$USER/anaconda3/etc/profile.d/conda.sh
conda activate stable_diffusion

cd ~/

git clone https://github.com/bes-dev/stable_diffusion.openvino.git

cd stable_diffusion.openvino

python -m pip install --upgrade pip
pip install openvino-dev[onnx,pytorch]==2022.3.0
pip install -r requirements.txt