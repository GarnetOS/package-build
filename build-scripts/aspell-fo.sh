#!/bin/bash
build-scripts/prepare.sh
install_deps which
install_deps aspell
wget https://ftp.gnu.org/gnu/aspell/dict/fo/aspell5-fo-0.2.16-1.tar.bz2
tar -xvf aspell5-fo-0.2.16-1.tar.bz2
cd aspell5-fo-0.2.16-1
./configure
make
make install