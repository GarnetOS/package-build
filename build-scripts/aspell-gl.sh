#!/bin/bash
build-scripts/prepare.sh
install_deps which
wget https://ftp.gnu.org/gnu/aspell/dict/gl/aspell6-gl-0.5a-2.tar.bz2
tar -xvf aspell6-gl-0.5a-2.tar.bz2
cd aspell6-gl-0.5a-2
./configure
make
make install