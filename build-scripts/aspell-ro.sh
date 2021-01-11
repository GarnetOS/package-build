#!/bin/bash
build-scripts/prepare.sh
install_deps which
wget https://ftp.gnu.org/gnu/aspell/dict/ro/aspell5-ro-3.3-2.tar.bz2
tar -xvf aspell5-ro-3.3-2.tar.bz2
cd aspell5-ro-3.3-2
./configure
make
make install