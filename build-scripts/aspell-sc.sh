#!/bin/bash
build-scripts/prepare.sh
install_deps which
wget https://ftp.gnu.org/gnu/aspell/dict/sc/aspell5-sc-1.0.tar.bz2
tar -xvf aspell5-sc-1.0.tar.bz2
cd aspell5-sc-1.0
./configure
make
make install