#!/bin/bash
build-scripts/prepare.sh
install_deps which
wget https://ftp.gnu.org/gnu/aspell/dict/ku/aspell5-ku-0.20-1.tar.bz2
tar -xvf aspell5-ku-0.20-1.tar.bz2
cd aspell5-ku-0.20-1
./configure
make
make install