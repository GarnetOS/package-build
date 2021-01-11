#!/bin/bash
build-scripts/prepare.sh
install_deps which
wget https://ftp.gnu.org/gnu/aspell/dict/tl/aspell5-tl-0.02-1.tar.bz2
tar -xvf aspell5-tl-0.02-1.tar.bz2
cd aspell5-tl-0.02-1
./configure
make
make install