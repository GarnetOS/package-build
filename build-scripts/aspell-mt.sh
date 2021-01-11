#!/bin/bash
build-scripts/prepare.sh
install_deps which
wget https://ftp.gnu.org/gnu/aspell/dict/mt/aspell-mt-0.50-0.tar.bz2
tar -xvf aspell-mt-0.50-0.tar.bz2
cd aspell-mt-0.50-0
./configure
make
make install