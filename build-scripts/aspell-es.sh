#!/bin/bash
build-scripts/prepare.sh
install_deps which
install_deps aspell
wget https://ftp.gnu.org/gnu/aspell/dict/es/aspell6-es-1.11-2.tar.bz2
tar -xvf aspell6-es-1.11-2.tar.bz2
cd aspell6-es-1.11-2
./configure
make
make install