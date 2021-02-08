#!/bin/bash
build-scripts/prepare.sh
install_deps which
install_deps aspell
wget https://ftp.gnu.org/gnu/aspell/dict/ca/aspell6-ca-2.1.5-1.tar.bz2
tar -xvf aspell6-ca-2.1.5-1.tar.bz2
cd aspell6-ca-2.1.5-1
./configure
make
make install