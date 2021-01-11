#!/bin/bash
build-scripts/prepare.sh
install_deps which
wget https://ftp.gnu.org/gnu/aspell/dict/fy/aspell6-fy-0.12-0.tar.bz2
tar -xvf aspell6-fy-0.12-0.tar.bz2
cd aspell6-fy-0.12-0
./configure
make
make install