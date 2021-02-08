#!/bin/bash
build-scripts/prepare.sh
install_deps which
install_deps aspell
wget https://ftp.gnu.org/gnu/aspell/dict/pt_PT/aspell6-pt_PT-20190329-1-0.tar.bz2
tar -xvf aspell6-pt_PT-20190329-1-0.tar.bz2
cd aspell6-pt_PT-20190329-1-0
./configure
make
make install