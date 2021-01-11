#!/bin/bash
build-scripts/prepare.sh
install_deps which
install_deps aspell
wget https://ftp.gnu.org/gnu/aspell/dict/sk/aspell6-sk-2.01-2.tar.bz2
tar -xvf aspell6-sk-2.01-2.tar.bz2
cd aspell6-sk-2.01-2
./configure
make
make install