#!/bin/bash
build-scripts/prepare.sh
install_deps which
install_deps aspell
wget https://ftp.gnu.org/gnu/aspell/dict/rw/aspell-rw-0.50-0.tar.bz2
tar -xvf aspell-rw-0.50-0.tar.bz2
cd aspell-rw-0.50-0
./configure
make
make install