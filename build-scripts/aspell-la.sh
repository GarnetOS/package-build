#!/bin/bash
build-scripts/prepare.sh
install_deps which
wget https://ftp.gnu.org/gnu/aspell/dict/la/aspell6-la-20020503-0.tar.bz2
tar -xvf aspell6-la-20020503-0.tar.bz2
cd aspell6-la-20020503-0
./configure
make
make install