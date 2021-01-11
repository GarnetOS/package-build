#!/bin/bash
build-scripts/prepare.sh
install_deps which
wget https://ftp.gnu.org/gnu/aspell/dict/cy/aspell-cy-0.50-3.tar.bz2
tar -xvf aspell-cy-0.50-3.tar.bz2
cd aspell-cy-0.50-3
./configure
make
make install