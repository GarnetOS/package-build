#!/bin/bash
build-scripts/prepare.sh
install_deps which
install_deps aspell
wget https://ftp.gnu.org/gnu/aspell/dict/gv/aspell-gv-0.50-0.tar.bz2
tar -xvf aspell-gv-0.50-0.tar.bz2
cd aspell-gv-0.50-0
./configure
make
make install