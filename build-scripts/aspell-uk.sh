#!/bin/bash
build-scripts/prepare.sh
install_deps which
wget https://ftp.gnu.org/gnu/aspell/dict/uk/aspell6-uk-1.4.0-0.tar.bz2
tar -xvf aspell6-uk-1.4.0-0.tar.bz2
cd aspell6-uk-1.4.0-0
./configure
make
make install