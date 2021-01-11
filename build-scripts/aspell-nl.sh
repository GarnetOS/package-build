#!/bin/bash
build-scripts/prepare.sh
install_deps which
wget https://ftp.gnu.org/gnu/aspell/dict/nl/aspell-nl-0.50-2.tar.bz2
tar -xvf aspell-nl-0.50-2.tar.bz2
cd aspell-nl-0.50-2
./configure
make
make install