#!/bin/bash
build-scripts/prepare.sh
install_deps which
install_deps aspell
wget https://ftp.gnu.org/gnu/aspell/dict/mg/aspell5-mg-0.03-0.tar.bz2
tar -xvf aspell5-mg-0.03-0.tar.bz2
cd aspell5-mg-0.03-0
./configure
make
make install