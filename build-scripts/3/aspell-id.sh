#!/bin/bash
build-scripts/prepare.sh
install_deps which
install_deps aspell
wget https://ftp.gnu.org/gnu/aspell/dict/id/aspell5-id-1.2-0.tar.bz2
tar -xvf aspell5-id-1.2-0.tar.bz2
cd aspell5-id-1.2-0
./configure
make
make install