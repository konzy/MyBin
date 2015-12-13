#!/bin/sh
# install cuDNN
tar -zxf cudnn-7.0-linux-x64-v3.0-prod.tgz
cd cuda
sudo cp lib64/* /usr/local/cuda/lib64/
sudo cp include/cudnn.h /usr/local/cuda/include/
