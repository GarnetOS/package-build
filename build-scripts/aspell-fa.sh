#!/bin/bash
build-scripts/prepare.sh
install_deps which
wget https://ftp.gnu.org/gnu/aspell/dict/fa/aspell6-fa-0.11-0.tar.bz2
tar -xvf aspell6-fa-0.11-0.tar.bz2
cd aspell6-fa-0.11-0
./configure
make
make install