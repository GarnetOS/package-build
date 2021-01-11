#!/bin/bash
build-scripts/prepare.sh
install_deps which
wget https://ftp.gnu.org/gnu/aspell/dict/gu/aspell6-gu-0.03-0.tar.bz2
tar -xvf aspell6-gu-0.03-0.tar.bz2
cd aspell6-gu-0.03-0
./configure
make
make install