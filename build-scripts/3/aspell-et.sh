#!/bin/bash
build-scripts/prepare.sh
install_deps which
install_deps aspell
wget https://ftp.gnu.org/gnu/aspell/dict/et/aspell6-et-0.1.21-1.tar.bz2
tar -xvf aspell6-et-0.1.21-1.tar.bz2
cd aspell6-et-0.1.21-1
./configure
make
make install