#!/bin/bash
build-scripts/prepare.sh
install_deps which
install_deps aspell
wget https://ftp.gnu.org/gnu/aspell/dict/hi/aspell6-hi-0.02-0.tar.bz2
tar -xvf aspell6-hi-0.02-0.tar.bz2
cd aspell6-hi-0.02-0
./configure
make
make install