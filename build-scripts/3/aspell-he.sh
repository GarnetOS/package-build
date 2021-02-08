#!/bin/bash
build-scripts/prepare.sh
install_deps which
install_deps aspell
wget https://ftp.gnu.org/gnu/aspell/dict/he/aspell6-he-1.0-0.tar.bz2
tar -xvf aspell6-he-1.0-0.tar.bz2
cd aspell6-he-1.0-0
./configure
make
make install