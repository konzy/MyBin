#/bin/bash
# scripts all the install of caffe 2.0
xdg-user-dirs-update
cd ~
# echo "#################################"
# echo "# download and install anaconda #"
# echo "#################################"
# wget https://3230d63b5fc54e62148e-c95ac804525aac4b6dba79b00b39d1d3.ssl.cf1.rackcdn.com/Anaconda2-2.4.1-Linux-x86_64.sh --no-check-certificate
# bash Anaconda2-2.4.1-Linux-x86_64.sh -b
echo "make Programming directory"
mkdir ~/Programming/
cd ~/Programming/
echo "clone caffe"
git clone https://github.com/BVLC/caffe.git
cd ~
echo 'export CAFFE_ROOT=~/Programming/caffe' >> .bashrc
echo 'export LD_LIBRARY_PATH=/usr/local/cuda/lib64:$HOME/anaconda/lib:usr/local/lib' >> .bashrc
source .bashrc
cd ~/Programming/caffe
mkdir build
cd build
cmake ..
make all
make runtest
cd ..
./data/mnist/get_mnist.sh
./examples/mnist/create_mnist.sh
./examples/mnist/train_lenet.sh
