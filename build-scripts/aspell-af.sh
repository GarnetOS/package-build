#!/bin/bash
build-scripts/prepare.sh
install_deps which
wget https://ftp.gnu.org/gnu/aspell/dict/af/aspell-af-0.50-0.tar.bz2
tar -xvf aspell-af-0.50-0.tar.bz2
cd aspell-af-0.50-0
./configure
make
make install