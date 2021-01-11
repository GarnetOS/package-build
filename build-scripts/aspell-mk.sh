#!/bin/bash
build-scripts/prepare.sh
install_deps which
install_deps aspell
wget https://ftp.gnu.org/gnu/aspell/dict/mk/aspell-mk-0.50-0.tar.bz2
tar -xvf aspell-mk-0.50-0.tar.bz2
cd aspell-mk-0.50-0
./configure
make
make install