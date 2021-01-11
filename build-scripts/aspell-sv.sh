#!/bin/bash
build-scripts/prepare.sh
install_deps which
install_deps aspell
wget https://ftp.gnu.org/gnu/aspell/dict/sv/aspell-sv-0.51-0.tar.bz2
tar -xvf aspell-sv-0.51-0.tar.bz2
cd aspell-sv-0.51-0
./configure
make
make install