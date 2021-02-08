#!/bin/bash
build-scripts/prepare.sh
install_deps which
install_deps aspell
wget https://ftp.gnu.org/gnu/aspell/dict/mn/aspell6-mn-0.06-2.tar.bz2
tar -xvf aspell6-mn-0.06-2.tar.bz2
cd aspell6-mn-0.06-2
./configure
make
make install