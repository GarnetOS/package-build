#!/bin/bash
build-scripts/prepare.sh
install_deps which
wget https://ftp.gnu.org/gnu/aspell/dict/nn/aspell-nn-0.50.1-1.tar.bz2
tar -xvf aspell-nn-0.50.1-1.tar.bz2
cd aspell-nn-0.50.1-1
./configure
make
make install