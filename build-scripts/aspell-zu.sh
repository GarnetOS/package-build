#!/bin/bash
build-scripts/prepare.sh
install_deps which
wget https://ftp.gnu.org/gnu/aspell/dict/zu/aspell-zu-0.50-0.tar.bz2
tar -xvf aspell-zu-0.50-0.tar.bz2
cd aspell-zu-0.50-0
./configure
make
make install