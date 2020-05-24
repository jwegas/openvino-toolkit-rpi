#!/usr/bin/env bash


#  download models
if [[ $1 == 'face_recognition_demo' ]]; then
    MODELS_PATH=./models/2019/R3/FP32/
    mkdir -p $MODELS_PATH
    cd $MODELS_PATH

    #  face reidentification
    wget https://download.01.org/opencv/2019/open_model_zoo/R3/20190905_163000_models_bin/face-detection-adas-0001/FP32/face-detection-adas-0001.bin
    wget https://download.01.org/opencv/2019/open_model_zoo/R3/20190905_163000_models_bin/face-detection-adas-0001/FP32/face-detection-adas-0001.xml

    wget https://download.01.org/opencv/2019/open_model_zoo/R3/20190905_163000_models_bin/face-reidentification-retail-0095/FP32/face-reidentification-retail-0095.bin
    wget https://download.01.org/opencv/2019/open_model_zoo/R3/20190905_163000_models_bin/face-reidentification-retail-0095/FP32/face-reidentification-retail-0095.xml

    wget https://download.01.org/opencv/2019/open_model_zoo/R3/20190905_163000_models_bin/landmarks-regression-retail-0009/FP32/landmarks-regression-retail-0009.bin
    wget https://download.01.org/opencv/2019/open_model_zoo/R3/20190905_163000_models_bin/landmarks-regression-retail-0009/FP32/landmarks-regression-retail-0009.xml

else
    echo "Please select valid mode"
fi
