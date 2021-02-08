#!/bin/bash
build-scripts/prepare.sh
install_deps which
install_deps aspell
wget https://ftp.gnu.org/gnu/aspell/dict/te/aspell6-te-0.01-2.tar.bz2
tar -xvf aspell6-te-0.01-2.tar.bz2
cd aspell6-te-0.01-2
./configure
make
make install