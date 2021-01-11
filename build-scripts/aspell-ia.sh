#!/bin/bash
build-scripts/prepare.sh
install_deps which
wget https://ftp.gnu.org/gnu/aspell/dict/ia/aspell-ia-0.50-1.tar.bz2
tar -xvf aspell-ia-0.50-1.tar.bz2
cd aspell-ia-0.50-1
./configure
make
make install