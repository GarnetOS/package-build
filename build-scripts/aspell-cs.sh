#!/bin/bash
build-scripts/prepare.sh
install_deps which
install_deps aspell
wget https://ftp.gnu.org/gnu/aspell/dict/cs/aspell6-cs-20040614-1.tar.bz2
tar -xvf aspell6-cs-20040614-1.tar.bz2
cd aspell6-cs-20040614-1
./configure
make
make install