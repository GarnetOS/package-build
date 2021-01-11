#!/bin/bash
build-scripts/prepare.sh
install_deps which
wget https://ftp.gnu.org/gnu/aspell/dict/be/aspell5-be-0.01.tar.bz2
tar -xvf aspell5-be-0.01.tar.bz2
cd aspell5-be-0.01
./configure
make
make install