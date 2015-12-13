#/bin/bash
# scripts all the install of caffe 2.0
echo "make Programming directory"
mkdir ~/Programming/
cd ~/Programming/
echo "clone caffe"
git clone https://github.com/BVLC/caffe.git
cd caffe
cat python/requirements.txt | xargs -L 1 sudo pip install
cd ~/Programming/caffe
mkdir build
cd build
cmake ..
make all
make runtest
cd ~
echo 'export CAFFE_ROOT=~/Programming/caffe' >> .bashrc
source .bashrc
