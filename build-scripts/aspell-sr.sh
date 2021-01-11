#!/bin/bash
build-scripts/prepare.sh
install_deps which
wget https://ftp.gnu.org/gnu/aspell/dict/sr/aspell6-sr-0.02.tar.bz2
tar -xvf aspell6-sr-0.02.tar.bz2
cd aspell6-sr-0.02
./configure
make
make install