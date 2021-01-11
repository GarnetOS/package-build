#!/bin/bash
build-scripts/prepare.sh
install_deps which
install_deps aspell
wget https://ftp.gnu.org/gnu/aspell/dict/pl/aspell6-pl-6.0_20061121-0.tar.bz2
tar -xvf aspell6-pl-6.0_20061121-0.tar.bz2
cd aspell6-pl-6.0_20061121-0
./configure
make
make install