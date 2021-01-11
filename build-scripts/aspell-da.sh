#!/bin/bash
build-scripts/prepare.sh
install_deps which
install_deps aspell
wget https://ftp.gnu.org/gnu/aspell/dict/da/aspell6-da-1.6.36-11-0.tar.bz2
tar -xvf aspell6-da-1.6.36-11-0.tar.bz2
cd aspell6-da-1.6.36-11-0
./configure
make
make install