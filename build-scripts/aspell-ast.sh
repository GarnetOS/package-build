#!/bin/bash
build-scripts/prepare.sh
install_deps which
wget https://ftp.gnu.org/gnu/aspell/dict/ast/aspell6-ast-0.01.tar.bz2
tar -xvf aspell6-ast-0.01.tar.bz2
cd aspell6-ast-0.01
./configure
make
make install