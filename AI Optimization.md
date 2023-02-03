# Testing Openvino optimised models

> OpenVINO toolkit (Open Visual Inference and Neural network Optimization) is a free toolkit facilitating the optimization of a deep learning model from a framework and deployment using an inference engine onto Intel hardware.

## Prerequisite

### Installing Anaconda

1. Make sure you have Anaconda installed, if not install it with the following steps :

```shell
wget https://repo.anaconda.com/archive/Anaconda3-2022.10-Linux-x86_64.sh
```
2. Execute the shell script

```shell
bash Anaconda3-2022.10-Linux-x86_64.sh
```

3. Press Enter to review the license agreement. Then press and hold Enter to scroll.


4. Enter “yes” to agree to the license agreement.

5. Use Enter to accept the default install location, use CTRL+C to cancel the installation, or enter another file path to specify an alternate installation directory. If you accept the default install location, the installer displays PREFIX=/home/<USER>/anaconda<2/3> and continues the installation. It may take a few minutes to complete.


6. The installer prompts you to choose whether to initialize Anaconda Distribution by running `conda init`. Anaconda recommends entering “yes”.

7. The installer finishes and displays, “Thank you for installing Anaconda3!”

8. Close and re-open your terminal window for the installation to take effect, or enter the command `source ~/.bashrc` to refresh the terminal.

## Installing Openvino

Clone the repository
```shell
https://github.com/krishnashed/bash_scripts_openvino.git
```

Execute the `openvino-env-setup.sh`. It will install Openvino dependancies in virtual environment called `openvino` and also clone `open_model_zoo` [repository](https://github.com/openvinotoolkit/open_model_zoo) at ~/

```shell
cd bash_scripts_openvino

./openvino-env-setup.sh
```

## Testing different Openvino optimized models

1. Handwritten Text Recognition

This is a network for handwritten English text recognition scenario. It consists of a CNN followed by Bi-LSTM, reshape layer and a fully connected layer. The network is able to recognize English text consisting of characters in the [GNHK](https://goodnotes.com/gnhk/) dataset.

Passing Input image 
<div style="align:center; margin-left:auto; margin-right:auto">
<img src="https://github.com/krishnashed/bash_scripts_openvino/blob/main/images/handwritting-input.jpg"/>
</div>

Run it as
```shell
$ ./hand-writting-recognition.sh

[ INFO ] OpenVINO Runtime   
[ INFO ]        build: 2022.3.0-9052-9752fafe8eb-releases/2022/3 
[ INFO ] Reading model /home/krishnashed/open_model_zoo/demos/handwritten_text_recognition_demo/python/models/handwritten-english-recognition-0001.xml
[ INFO ] The model /home/krishnashed/open_model_zoo/demos/handwritten_text_recognition_demo/python/models/handwritten-english-recognition-0001.xml is loaded to CPU
['Picture ID. and Passport photo']
[ INFO ] Metrics report:
[ INFO ]        Latency: 249.1 ms
```

More Details at : https://github.com/openvinotoolkit/open_model_zoo/blob/master/models/intel/handwritten-english-recognition-0001/README.md

2. Human Pose Estimation

This is a multi-person 2D pose estimation network based on the EfficientHRNet approach (that follows the Associative Embedding framework). For every person in an image, the network detects a human pose: a body skeleton consisting of keypoints and connections between them. The pose may contain up to 17 keypoints: ears, eyes, nose, shoulders, elbows, wrists, hips, knees, and ankles.


Run it as 
```shell
./human-pose-detection.sh
```

<div style="align:center; margin-left:auto; margin-right:auto">
<img src="https://github.com/krishnashed/bash_scripts_openvino/blob/main/images/human-pose-estimation.png"/>
</div>

More Details at : https://github.com/openvinotoolkit/open_model_zoo/blob/master/models/intel/human-pose-estimation-0005/README.md

3. Image Retrieval

Image retrieval model based on MobileNetV2 architecture as a backbone.

Run it as 
```shell
./image-retreival.sh
```
<div style="align:center; margin-left:auto; margin-right:auto">
<img src="https://github.com/krishnashed/bash_scripts_openvino/blob/main/images/image-retrieval.png"/>
</div>

More Details at : https://github.com/openvinotoolkit/open_model_zoo/blob/master/models/intel/image-retrieval-0001/README.md

4. Instance Segmentation

This model is an instance segmentation network for 80 classes of objects. It is a Mask R-CNN with ResNet50 backbone, FPN, RPN, detection and segmentation heads.

Run it as 
```shell
./instance-segmentation.sh
```

<div style="align:center; margin-left:auto; margin-right:auto">
<img src="https://github.com/krishnashed/bash_scripts_openvino/blob/main/images/instance-segmentation.png"/>
</div>

More Details at : https://github.com/openvinotoolkit/open_model_zoo/blob/master/models/intel/instance-segmentation-security-0002/README.md

5. Vehicle License plate detection

This is a MobileNetV2 + SSD-based vehicle and (Chinese) license plate detector for the "Barrier" use case.

Run it as 
```shell
./number-plate-detection.sh
```

<div style="align:center; margin-left:auto; margin-right:auto">
<img src="https://github.com/krishnashed/bash_scripts_openvino/blob/main/images/number-plate-detection.png"/>
</div>

More Details at : https://github.com/openvinotoolkit/open_model_zoo/blob/master/models/intel/vehicle-license-plate-detection-barrier-0106/README.md

6. Person Detection

This is a person detector that is based on MobileNetV2 backbone with ATSS head for 1280x720 resolution.

Run it as 
```shell
./person-detection.sh
```

<div style="align:center; margin-left:auto; margin-right:auto">
<img src="https://github.com/krishnashed/bash_scripts_openvino/blob/main/images/person-detection.png"/>
</div>

More Details at : https://github.com/openvinotoolkit/open_model_zoo/blob/master/models/intel/person-detection-0303/README.md

7. Product Detection

A product detector based on the SSD-lite architecture with MobileNetV2 as a backbone for self-checkout points of sale-related scenes. The network can detect 12 classes of objects (sprite, kool-aid, extra, ocelo, finish, mtn_dew, best_foods, gatorade, heinz, ruffles, pringles, del_monte). Labels 0 and 1 are related to background_label and undefined correspondingly.

Run it as 
```shell
./product-detection.sh
```

<div style="align:center; margin-left:auto; margin-right:auto">
<img src="https://github.com/krishnashed/bash_scripts_openvino/blob/main/images/product-detection.png"/>
</div>

More Details at : https://github.com/openvinotoolkit/open_model_zoo/blob/master/models/intel/product-detection-0001/README.md

8. Image Segmentation

This is a segmentation network to classify each pixel into 20 classes:

road, sidewalk, building, wall, fence, pole, traffic light, traffic sign, vegetation, terrain, sky, person, rider, car, truck, bus, train, motorcycle, bicycle, ego-vehicle


Run it as 
```shell
./semantic-segmentation-adas.sh
```

<div style="align:center; margin-left:auto; margin-right:auto">
<img src="https://github.com/krishnashed/bash_scripts_openvino/blob/main/images/semantic-segmentation.png"/>
</div>

More Details at : https://github.com/openvinotoolkit/open_model_zoo/blob/master/models/intel/semantic-segmentation-adas-0001/README.md

9. Text-to-speech

This is a speech synthesis composite model that simultaneously reconstructs mel-spectrogram and wave form from text. The model generates wave form from symbol sequences separated by space. The model is built on top of the modified ForwardTacotron and modified MelGAN frameworks.

Run it as 
```shell
$ ./text-to-speech.sh

[ INFO ] Metrics report:
[ INFO ]        Latency: 11443.3 ms
[ DEBUG ]       Vocoder time: 10239.6 ms
[ DEBUG ]       ForwardTacotronTime: 1185.6 ms
```

More Details at : https://github.com/openvinotoolkit/open_model_zoo/blob/master/models/intel/text-to-speech-en-0001/README.md

10. Vehicle Detection

This is a vehicle detector that is based on MobileNetV2 backbone with two SSD heads from 1/16 and 1/8 scale feature maps and clustered prior boxes for 512x512 resolution

Run it as 
```shell
./vehicle-detection.sh
```

<div style="align:center; margin-left:auto; margin-right:auto">
<img src="https://github.com/krishnashed/bash_scripts_openvino/blob/main/images/vehicle-detection.png"/>
</div>

More Details at : https://github.com/openvinotoolkit/open_model_zoo/blob/master/models/intel/vehicle-detection-0202/README.md

11. GPT-2 Text Prediction

The `gpt-2` model is a one of Generative Pre-trained Transformer (GPT) model family, pre-trained on a very large corpus of English data in a self-supervised fashion. The GPT architecture implements a deep neural network, specifically a transformer model, which uses attention in place of previous recurrence- and convolution-based architectures. Attention mechanisms allow the model to selectively focus on segments of input text it predicts to be the most relevant. GPT-2 is trained with a simple objective: predict the next word, given all of the previous words within some text.


Run it as 
```shell
$ ./gpt2.sh

[ DEBUG ] Loaded vocab file from /home/krishnashed/public/gpt-2/gpt2/vocab.json, get 50257 tokens
[ INFO ] OpenVINO Runtime
[ INFO ]        build: 2022.3.0-9052-9752fafe8eb-releases/2022/3
[ INFO ] Reading model /home/krishnashed/public/gpt-2/FP32/gpt-2.xml
[ INFO ] The model /home/krishnashed/public/gpt-2/FP32/gpt-2.xml is loaded to CPU
Type input prompt (empty string to exit):hi
[ INFO ] Sequence of length 1024 is processed with 0.39 requests/sec (2.6 sec per request)
[ INFO ] Sequence of length 1024 is processed with 0.51 requests/sec (2.0 sec per request)
[ INFO ] Sequence of length 1024 is processed with 0.46 requests/sec (2.2 sec per request)
[ INFO ] 40 requests were processed in 116.86sec (2.9sec per request)
[ INFO ] GENERATED SEQUENCE: hi center's president, Ewa Ermili, telling the Associated Press, which recently bought the Seattle Times' undervalued The Best Park:

They reported a news story about private events that took
Type input prompt (empty string to exit):who is Ewa Ermili ?
[ INFO ] Sequence of length 1024 is processed with 0.42 requests/sec (2.4 sec per request)
[ INFO ] Sequence of length 1024 is processed with 0.46 requests/sec (2.2 sec per request)
[ INFO ] Sequence of length 1024 is processed with 0.44 requests/sec (2.3 sec per request)
[ INFO ] Sequence of length 1024 is processed with 0.17 requests/sec (5.8 sec per request)
[ INFO ] 40 requests were processed in 124.11sec (3.1sec per request)
[ INFO ] GENERATED SEQUENCE: who is Ewa Ermili ?) returned from her spell of reflection.

Gareth encountered her in a castle far away from home, and his heart began to fear her devotion and conquest.

It would have been a
```

12. Stable Diffusion

Implementation of Text-To-Image generation using Stable Diffusion on Intel CPU.

Setup 
```shell
./stable-diffusion.sh
```
