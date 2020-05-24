#!/usr/bin/env bash

#  update our Raspbian OS
sudo apt update && sudo apt upgrade -y

#  download archive with OpenVINO Toolkit
cd ~/Downloads
wget https://download.01.org/opencv/2020/openvinotoolkit/2020.1/l_openvino_toolkit_runtime_raspbian_p_2020.1.023.tgz

#  unpack OpenVINO Toolkit to /opt
OPENVINO_DIR=/opt/intel/openvino
sudo mkdir -p $OPENVINO_DIR
sudo tar -xf l_openvino_toolkit_runtime_raspbian_p_2020.1.023.tgz --strip 1 -C $OPENVINO_DIR
echo OpenVINO Toolkit has been installed in $OPENVINO_DIR

#  update .bashrc
source /opt/intel/openvino/bin/setupvars.sh
echo "source /opt/intel/openvino/bin/setupvars.sh" >> ~/.bashrc
echo .bashrc has been updated

#  install USB rules for Neural Compute Stick
sh /opt/intel/openvino/install_dependencies/install_NCS_udev_rules.sh
echo USB rules has been installed

#  clone repository with demos
cd ~
git clone https://github.com/opencv/open_model_zoo.git
echo "Demo code (open model zoo) has been cloned into /home/pi/"
