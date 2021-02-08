#!/bin/bash
build-scripts/prepare.sh
install_deps which
install_deps aspell
wget https://ftp.gnu.org/gnu/aspell/dict/kn/aspell6-kn-0.01-1.tar.bz2
tar -xvf aspell6-kn-0.01-1.tar.bz2
cd aspell6-kn-0.01-1
./configure
make
make install