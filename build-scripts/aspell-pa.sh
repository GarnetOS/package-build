#!/bin/bash
build-scripts/prepare.sh
install_deps which
wget https://ftp.gnu.org/gnu/aspell/dict/pa/aspell6-pa-0.01-1.tar.bz2
tar -xvf aspell6-pa-0.01-1.tar.bz2
cd aspell6-pa-0.01-1
./configure
make
make install