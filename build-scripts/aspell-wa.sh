#!/bin/bash
build-scripts/prepare.sh
install_deps which
install_deps aspell
wget https://ftp.gnu.org/gnu/aspell/dict/wa/aspell-wa-0.50-0.tar.bz2
tar -xvf aspell-wa-0.50-0.tar.bz2
cd aspell-wa-0.50-0
./configure
make
make install