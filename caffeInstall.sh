#/bin/bash
# scripts all the install of caffe 2.0
echo "include cuda repo and apt-get update and upgrade"
sudo wget http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1404/x86_64/cuda-repo-ubuntu1404_7.5-18_amd64.deb
sudo dpkg -i cuda-repo-ubuntu1404_7.5-18_amd64.deb
sudo apt-get update && sudo apt-get upgrade -y
echo "install caffe dependencies"
sudo apt-get install -y build-essential cuda libprotobuf-dev libleveldb-dev libsnappy-dev libopencv-dev libboost-all-dev libhdf5-serial-dev protobuf-compiler gfortran libjpeg62 libfreeimage-dev libatlas-base-dev git python-dev python-pip libgoogle-glog-dev libbz2-dev libxml2-dev libxslt-dev libffi-dev libssl-dev libgflags-dev liblmdb-dev python-yaml python-numpy cmake doxygen
#sudo easy_install pillow
echo "make Programming directory"
mkdir ~/Programming/
cd ~/Programming/
echo "clone caffe"
git clone https://github.com/BVLC/caffe.git
cd caffe
cat python/requirements.txt | xargs -L 1 sudo pip install

