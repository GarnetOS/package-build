#!/bin/bash
build-scripts/prepare.sh
install_deps which
install_deps aspell
wget https://ftp.gnu.org/gnu/aspell/dict/br/aspell-br-0.50-2.tar.bz2
tar -xvf aspell-br-0.50-2.tar.bz2
cd aspell-br-0.50-2
./configure
make
make install