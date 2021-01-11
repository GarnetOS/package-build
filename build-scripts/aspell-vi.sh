#!/bin/bash
build-scripts/prepare.sh
install_deps which
wget https://ftp.gnu.org/gnu/aspell/dict/vi/aspell6-vi-0.01.1-1.tar.bz2
tar -xvf aspell6-vi-0.01.1-1.tar.bz2
cd aspell6-vi-0.01.1-1
./configure
make
make install