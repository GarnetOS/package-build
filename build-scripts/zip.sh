#!/bin/bash
build-scripts/prepare.sh
wget https://downloads.sourceforge.net/infozip/zip30.tar.gz
tar -xf zip30.tar.gz
cd zip30
make -f unix/Makefile generic_gcc
make prefix=/usr MANDIR=/usr/share/man/man1 -f unix/Makefile install
cd ..
rm -rf zip30
rm zip30.tar.gz
