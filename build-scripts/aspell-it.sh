#!/bin/bash
build-scripts/prepare.sh
install_deps which
install_deps aspell
wget https://ftp.gnu.org/gnu/aspell/dict/it/aspell6-it-2.2_20050523-0.tar.bz2
tar -xvf aspell6-it-2.2_20050523-0.tar.bz2
cd aspell6-it-2.2_20050523-0
./configure
make
make install