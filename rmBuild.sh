#!/bin/bash
# deletes build then makes it, then changes to it 
cd $CAFFE_ROOT/
rm -rf build
mkdir build
