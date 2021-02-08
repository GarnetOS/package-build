#!/bin/bash
build-scripts/prepare.sh
install_deps which
install_deps aspell
wget https://ftp.gnu.org/gnu/aspell/dict/tn/aspell5-tn-1.0.1-0.tar.bz2
tar -xvf aspell5-tn-1.0.1-0.tar.bz2
cd aspell5-tn-1.0.1-0
./configure
make
make install