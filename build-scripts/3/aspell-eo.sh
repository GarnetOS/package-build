#!/bin/bash
build-scripts/prepare.sh
install_deps which
install_deps aspell
wget https://ftp.gnu.org/gnu/aspell/dict/eo/aspell6-eo-2.1.20000225a-2.tar.bz2
tar -xvf aspell6-eo-2.1.20000225a-2.tar.bz2
cd aspell6-eo-2.1.20000225a-2
./configure
make
make install