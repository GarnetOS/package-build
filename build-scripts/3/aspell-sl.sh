#!/bin/bash
build-scripts/prepare.sh
install_deps which
install_deps aspell
wget https://ftp.gnu.org/gnu/aspell/dict/sl/aspell-sl-0.50-0.tar.bz2
tar -xvf aspell-sl-0.50-0.tar.bz2
cd aspell-sl-0.50-0
./configure
make
make install