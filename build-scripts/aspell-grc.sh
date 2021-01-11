#!/bin/bash
build-scripts/prepare.sh
install_deps which
wget https://ftp.gnu.org/gnu/aspell/dict/grc/aspell6-grc-0.02-0.tar.bz2
tar -xvf aspell6-grc-0.02-0.tar.bz2
cd aspell6-grc-0.02-0
./configure
make
make install