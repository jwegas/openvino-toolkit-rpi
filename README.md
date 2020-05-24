# OpenVINO Toolkit for Raspbian OS
Some scripts to install OpenVINO Toolkit on Raspberry Pi.

Succesfully tested with:
* Rapberry Pi 3 B+;
* OS Raspbian Buster with desktop by 2020.20 (4.19);
* Intel Neural Compute Stick 2.

## step 1
Run script `install_openvino.sh`:
```bash
bash install_openvino.sh
```
Whis script will update and upgrade your Raspbian OS, download and unpack archive with OpenVINO Toolkit v2020.1, update .bashrc, install some dependencies and clone repository with demo code.

## step 2
Download models required with demo you would like to run. I found some troubles with compability between available OpenVINO Toolkit version and Open Model Zoo. So that's why I recommend to use 2019.R3 models with 2020.1 toolkit. Experiments showed that everything works fine.
To download models use:
```bash
bash download_models.sh <mode>
```
where `mode` is name of demo model (like *.py file). For example: face_recognition_demo.
Available models:
* face_recognition_demo.

Models will be downloaded to `~/openvino/models`.

## step 3
Now python virtual environment need to be created. For this porpose just run script:
```bash
bash setup_python_env.sh
```
This script will create virtual environment in `~/venvs/openvino` and install python-packages from `requirements.txt`.
Later please use this environment to run demo code from Open Model Zoo.

## step 4
Run your model with
```bash
bash demo.sh <model>
```
where `mode` is name of demo model. For example: `face_recognition_demo`.
Available models:
* face_recognition_demo.

Be sure you downloded required models before (check **step 2**).
I recommend to run demos via VNC (remote control with desktop). It will allow to see inference output in realtime.
Also it's assumed that you use Neural Compute Stick 2 and Raspberry Camera connected to your Raspberry Pi.
If you would like to change some arguments to run some models please check and update `demo.sh`.


Some notes about running models:
* `face_recognition_demo`:
  * be sure you put photos of your faces in `~/openvino/resources/face_recognition_demo/faces` in format `<name>-<order-num>.jpg`, where `<name>` is name of person (for example Jack or Julia) and `<order-num>` is number from 0 to inf.

***
Write to me if you have any queistion!
Good luck and have a nice day!
