#!/bin/bash

# Stop on the first sign of trouble
set -e

SCRIPT_DIR=$(pwd)

if [ $UID != 0 ]; then
    echo "Error: Ejecutar como root"
    exit 1
fi

git clone https://estape11:thekillers97@gitlab.com/debruynmonge/patrones.git
cd patrones
git checkout ProyectoFinalJacoboVM

apt-get update
apt-get install python-pip -y
apt-get install python-pip3 -y
apt-get install libopencv-dev python-opencv -y

pip3 install opencv-python --user
pip install opencv-python --user

pip3 install scikit-image --user
pip install scikit-image --user

pip3 install sklearn --user
pip install sklearn --user

pip3 install tensorflow --user
pip install tensorflow --user

pip3 install Keras --user
pip install Keras --user

python3 Training.py