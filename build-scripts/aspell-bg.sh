#!/bin/bash
build-scripts/prepare.sh
install_deps which
install_deps aspell
wget https://ftp.gnu.org/gnu/aspell/dict/bg/aspell6-bg-4.1-0.tar.bz2
tar -xvf aspell6-bg-4.1-0.tar.bz2
cd aspell6-bg-4.1-0
./configure
make
make install