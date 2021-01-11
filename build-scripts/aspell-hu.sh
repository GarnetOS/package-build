#!/bin/bash
build-scripts/prepare.sh
install_deps which
install_deps aspell
wget https://ftp.gnu.org/gnu/aspell/dict/hu/aspell6-hu-0.99.4.2-0.tar.bz2
tar -xvf aspell6-hu-0.99.4.2-0.tar.bz2
cd aspell6-hu-0.99.4.2-0
./configure
make
make install