#!/bin/bash
build-scripts/prepare.sh
install_deps which
wget https://ftp.gnu.org/gnu/aspell/dict/ms/aspell-ms-0.50-0.tar.bz2
tar -xvf aspell-ms-0.50-0.tar.bz2
cd aspell-ms-0.50-0
./configure
make
make install