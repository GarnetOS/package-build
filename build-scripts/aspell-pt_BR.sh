#!/bin/bash
build-scripts/prepare.sh
install_deps which
wget https://ftp.gnu.org/gnu/aspell/dict/pt_BR/aspell6-pt_BR-20131030-12-0.tar.bz2
tar -xvf aspell6-pt_BR-20131030-12-0.tar.bz2
cd aspell6-pt_BR-20131030-12-0
./configure
make
make install