#!/bin/bash
# runs cmake for caffe
cd ~/Programming/caffe
mkdir build
cd build
cmake ..
make all
make runtest
cd ~
echo 'export CAFFE_ROOT=~/Programming/caffe' >> .bashrc
source .bashrc

