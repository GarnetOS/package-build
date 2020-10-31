#!/bin/bash
build-scripts/prepare.sh
wget https://ftp.gnu.org/gnu/which/which-2.21.tar.gz
tar -xvf which-2.21.tar.gz
cd which-2.21
./configure --prefix=/usr
make
make install
cd ..
rm -rf which-2.21
rm which-2.21.tar.gz
