#!/bin/bash
build-scripts/prepare.sh
install_deps which
install_deps aspell
wget https://ftp.gnu.org/gnu/aspell/dict/fr/aspell-fr-0.50-3.tar.bz2
tar -xvf aspell-fr-0.50-3.tar.bz2
cd aspell-fr-0.50-3
./configure
make
make install