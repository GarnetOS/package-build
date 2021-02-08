build-scripts/prepare.sh
wget https://downloads.sourceforge.net/infozip/unzip60.tar.gz

wget http://www.linuxfromscratch.org/patches/blfs/10.0/unzip-6.0-consolidated_fixes-1.patch

tar -xvf unzip60.tar.gz
cd unzip60
patch -Np1 -i ../unzip-6.0-consolidated_fixes-1.patch
make -f unix/Makefile generic
make prefix=/usr MANDIR=/usr/share/man/man1 \
 -f unix/Makefile install
cd ..
rm unzip60.tar.gz
rm -rf unzip60