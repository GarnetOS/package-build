#!/bin/bash
build-scripts/prepare.sh
install_deps which
wget https://ftp.gnu.org/gnu/aspell/dict/el/aspell6-el-0.08-0.tar.bz2
tar -xvf aspell6-el-0.08-0.tar.bz2
cd aspell6-el-0.08-0
./configure
make
make install