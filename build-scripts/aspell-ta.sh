#!/bin/bash
build-scripts/prepare.sh
install_deps which
wget https://ftp.gnu.org/gnu/aspell/dict/ta/aspell6-ta-20040424-1.tar.bz2
tar -xvf aspell6-ta-20040424-1.tar.bz2
cd aspell6-ta-20040424-1
./configure
make
make install