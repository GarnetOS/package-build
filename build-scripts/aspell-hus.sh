#!/bin/bash
build-scripts/prepare.sh
install_deps which
wget https://ftp.gnu.org/gnu/aspell/dict/hus/aspell6-hus-0.03-1.tar.bz2
tar -xvf aspell6-hus-0.03-1.tar.bz2
cd aspell6-hus-0.03-1
./configure
make
make install