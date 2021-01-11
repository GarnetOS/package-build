#!/bin/bash
build-scripts/prepare.sh
install_deps which
wget https://ftp.gnu.org/gnu/aspell/dict/gd/aspell5-gd-0.1.1-1.tar.bz2
tar -xvf aspell5-gd-0.1.1-1.tar.bz2
cd aspell5-gd-0.1.1-1
./configure
make
make install