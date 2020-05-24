#!/usr/bin/env bash

#  activate environment
source ~/venvs/openvino/bin/activate

if [[ $1 == 'face_recognition_demo' ]]; then
    MODELS_PATH=./models/2019/R3/FP32
    FACES_PATH=./resources/face_recognition_demo/faces

    mkdir -p $FACES_PATH

    python ~/open_model_zoo/demos/python_demos/face_recognition_demo/face_recognition_demo.py \
        -fg $FACES_PATH \
        -m_fd $MODELS_PATH/face-detection-adas-0001.xml \
        -m_lm $MODELS_PATH/landmarks-regression-retail-0009.xml \
        -m_reid $MODELS_PATH/face-reidentification-retail-0095.xml \
        -d_fd MYRIAD \
        -d_lm MYRIAD \
        -d_reid MYRIAD
else
    echo "Please select valid mode"
fi