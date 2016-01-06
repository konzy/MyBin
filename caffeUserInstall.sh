#/bin/bash
# scripts all the install of caffe 2.0
xdg-user-dirs-update
cd ~
echo "download and install anaconda"
wget http://09c8d0b2229f813c1b93-c95ac804525aac4b6dba79b00b39d1d3.r79.cf1.rackcdn.com/Anaconda-2.0.0-Linux-x86_64.sh
bash Anaconda-2.0.0-Linux-x86_64.sh -b
echo "make Programming directory"
mkdir ~/Programming/
cd ~/Programming/
echo "clone caffe"
git clone https://github.com/BVLC/caffe.git
cd ~
echo 'export CAFFE_ROOT=~/Programming/caffe' >> .bashrc
source .bashrc
cd $CAFFE_ROOT
mkdir build
cd build
cmake ..
make all
make runtest
