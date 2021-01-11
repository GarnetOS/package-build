#!/bin/bash
build-scripts/prepare.sh
install_deps which
wget https://ftp.gnu.org/gnu/aspell/dict/mi/aspell-mi-0.50-0.tar.bz2
tar -xvf aspell-mi-0.50-0.tar.bz2
cd aspell-mi-0.50-0
./configure
make
make install