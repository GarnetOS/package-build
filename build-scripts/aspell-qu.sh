#!/bin/bash
build-scripts/prepare.sh
install_deps which
wget https://ftp.gnu.org/gnu/aspell/dict/qu/aspell6-qu-0.02-0.tar.bz2
tar -xvf aspell6-qu-0.02-0.tar.bz2
cd aspell6-qu-0.02-0
./configure
make
make install