#!/usr/bin/env bash


#  install some additional depends
sudo apt install -y libatlas-base-dev libjasper-dev libqtgui4 libqt4-test

#  install python tool to create virtual environments
sudo pip3 install virtualenv

#  crate venv for OpenVINO Toolkit
mkdir -p ~/venvs
virtualenv ~/venvs/openvino -p python3.7

#  activate venv and install required libraries
source ~/venvs/openvino/bin/activate
pip install -U -r requirements.txt --no-cache
