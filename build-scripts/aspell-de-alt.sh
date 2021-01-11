#!/bin/bash
build-scripts/prepare.sh
install_deps which
wget https://ftp.gnu.org/gnu/aspell/dict/de-alt/aspell6-de-alt-2.1-1.tar.bz2
tar -xvf aspell6-de-alt-2.1-1.tar.bz2
cd aspell6-de-alt-2.1-1
./configure
make
make install