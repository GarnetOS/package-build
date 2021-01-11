#!/bin/bash
build-scripts/prepare.sh
install_deps which
wget https://ftp.gnu.org/gnu/aspell/dict/ky/aspell6-ky-0.01-0.tar.bz2
tar -xvf aspell6-ky-0.01-0.tar.bz2
cd aspell6-ky-0.01-0
./configure
make
make install