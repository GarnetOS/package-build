#!/bin/bash
build-scripts/prepare.sh
install_deps which
install_deps aspell
wget https://ftp.gnu.org/gnu/aspell/dict/hil/aspell5-hil-0.11-0.tar.bz2
tar -xvf aspell5-hil-0.11-0.tar.bz2
cd aspell5-hil-0.11-0
./configure
make
make install