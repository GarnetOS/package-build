#!/bin/bash
build-scripts/prepare.sh
install_deps which
install_deps aspell
wget https://ftp.gnu.org/gnu/aspell/dict/az/aspell6-az-0.02-0.tar.bz2
tar -xvf aspell6-az-0.02-0.tar.bz2
cd aspell6-az-0.02-0
./configure
make
make install