#!/bin/bash
build-scripts/prepare.sh
install_deps which
wget https://ftp.gnu.org/gnu/aspell/dict/hr/aspell-hr-0.51-0.tar.bz2
tar -xvf aspell-hr-0.51-0.tar.bz2
cd aspell-hr-0.51-0
./configure
make
make install