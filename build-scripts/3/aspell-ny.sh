#!/bin/bash
build-scripts/prepare.sh
install_deps which
install_deps aspell
wget https://ftp.gnu.org/gnu/aspell/dict/ny/aspell5-ny-0.01-0.tar.bz2
tar -xvf aspell5-ny-0.01-0.tar.bz2
cd aspell5-ny-0.01-0
./configure
make
make install