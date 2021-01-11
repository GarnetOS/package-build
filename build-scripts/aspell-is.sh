#!/bin/bash
build-scripts/prepare.sh
install_deps which
install_deps aspell
wget https://ftp.gnu.org/gnu/aspell/dict/is/aspell-is-0.51.1-0.tar.bz2
tar -xvf aspell-is-0.51.1-0.tar.bz2
cd aspell-is-0.51.1-0
./configure
make
make install