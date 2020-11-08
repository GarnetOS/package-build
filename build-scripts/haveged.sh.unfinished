#!/bin/bash
build-scripts/prepare.sh
wget https://github.com/jirka-h/haveged/archive/v1.9.13/haveged-1.9.13.tar.gz
tar -xvf haveged-1.9.13.tar.gz
cd haveged-1.9.13
./configure --prefix=/usr
make
make install
mkdir -pv    /usr/share/doc/haveged-1.9.13
cp -v README /usr/share/doc/haveged-1.9.13
cd ..
wget http://anduin.linuxfromscratch.org/BLFS/blfs-bootscripts/blfs-bootscripts-20200818.tar.xz
tar -xvf blfs-bootscripts-20200818.tar.xz
cd blfs-bootscripts-20200818
make install-haveged
cd ..
rm -rf blfs-bootscripts-20200818
rm blfs-bootscripts-20200818.tar.xz
rm haveged-1.9.13.tar.gz
rm -rf haveged-1.9.13
