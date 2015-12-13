#/bin/bash
# scripts all the install of caffe 2.0


le true; do
    read -p "Have you downloaded and put cudnn-7.0-linux-x64-v3.0-prod.tgz in the home directory?" yn
    case $yn in
        [Yy]* ) break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done


echo "include cuda repo and apt-get update and upgrade"
sudo wget http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1404/x86_64/cuda-repo-ubuntu1404_7.5-18_amd64.deb
sudo dpkg -i cuda-repo-ubuntu1404_7.5-18_amd64.deb
sudo apt-get update && sudo apt-get upgrade -y
echo "install caffe dependencies"
sudo apt-get install -y build-essential cuda libprotobuf-dev libleveldb-dev libsnappy-dev libopencv-dev libboost-all-dev libhdf5-serial-dev protobuf-compiler gfortran libjpeg62 libfreeimage-dev libatlas-base-dev git python-dev python-pip libgoogle-glog-dev libbz2-dev libxml2-dev libxslt-dev libffi-dev libssl-dev libgflags-dev liblmdb-dev python-yaml python-numpy cmake doxygen
sudo easy_install pillow
echo "make Programming directory"
mkdir ~/Programming/
cd ~/Programming/
echo "clone caffe"
git clone https://github.com/BVLC/caffe.git
cd caffe
cat python/requirements.txt | xargs -L 1 sudo pip install
cd ~
tar -zxf cudnn-7.0-linux-x64-v3.0-prod.tgz
cd cuda
sudo cp lib64/* /usr/local/cuda/lib64/
sudo cp include/cudnn.h /usr/local/cuda/include/
cd ~/Programming/caffe
mkdir build
cd build
cmake ..
make all
make runtest
cd ~
echo 'export CAFFE_ROOT=~/Programming/caffe' >> .bashrc
source .bashrc

