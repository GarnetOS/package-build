#!/bin/bash
build-scripts/prepare.sh
install_deps which
wget https://ftp.gnu.org/gnu/aspell/dict/nb/aspell-nb-0.50.1-0.tar.bz2
tar -xvf aspell-nb-0.50.1-0.tar.bz2
cd aspell-nb-0.50.1-0
./configure
make
make install