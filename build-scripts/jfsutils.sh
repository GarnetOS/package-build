build-scripts/prepare.sh
wget http://jfs.sourceforge.net/project/pub/jfsutils-1.1.15.tar.gz
wget http://www.linuxfromscratch.org/patches/blfs/10.0/jfsutils-1.1.15-gcc10_fix-1.patch
tar -xvf jfsutils-1.1.15.tar.gz
cd jfsutils-1.1.15
patch -Np1 -i ../jfsutils-1.1.15-gcc10_fix-1.patch
sed -i "/unistd.h/a#include <sys/types.h>"    fscklog/extract.c &&
sed -i "/ioctl.h/a#include <sys/sysmacros.h>" libfs/devices.c   &&

./configure &&
make
make install
cd ..
rm jfsutils-1.1.15.tar.gz
rm -rf jfsutils-1.1.15.tar.gz
