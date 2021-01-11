#!/bin/bash
build-scripts/prepare.sh
install_deps which
install_deps aspell
wget https://ftp.gnu.org/gnu/aspell/dict/ml/aspell6-ml-0.03-1.tar.bz2
tar -xvf aspell6-ml-0.03-1.tar.bz2
cd aspell6-ml-0.03-1
./configure
make
make install