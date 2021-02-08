#!/bin/bash
build-scripts/prepare.sh
install_deps which
install_deps aspell
wget https://ftp.gnu.org/gnu/aspell/dict/lv/aspell6-lv-0.5.5-1.tar.bz2
tar -xvf aspell6-lv-0.5.5-1.tar.bz2
cd aspell6-lv-0.5.5-1
./configure
make
make install