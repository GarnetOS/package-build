#!/bin/bash
build-scripts/prepare.sh
install_deps which
install_deps aspell
wget https://ftp.gnu.org/gnu/aspell/dict/de/aspell6-de-20161207-7-0.tar.bz2
tar -xvf aspell6-de-20161207-7-0.tar.bz2
cd aspell6-de-20161207-7-0
./configure
make
make install