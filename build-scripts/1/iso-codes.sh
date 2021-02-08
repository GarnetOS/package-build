#!/bin/bash
build-scripts/prepare.sh
wget http://anduin.linuxfromscratch.org/BLFS/iso-codes/iso-codes-4.5.0.tar.xz
tar -xvf iso-codes-4.5.0.tar.xz
cd iso-codes-4.5.0
./configure --prefix=/usr
make
make install
cd ..
rm -rf iso-codes-4.5.0
rm iso-codes-4.5.0.tar.xz
