#!/bin/bash
build-scripts/prepare.sh
install_deps which
install_deps aspell
wget https://ftp.gnu.org/gnu/aspell/dict/ru/aspell6-ru-0.99f7-1.tar.bz2
tar -xvf aspell6-ru-0.99f7-1.tar.bz2
cd aspell6-ru-0.99f7-1
./configure
make
make install