build-script/prepare.sh
wget https://downloads.xiph.org/releases/ogg/libogg-1.3.4.tar.xz
tar -xvf libogg-1.3.4.tar.xz
cd libogg-1.3.4
./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/libogg-1.3.4 &&
make
make install
cd ..
rm libogg-1.3.4.tar.xz
rm -rf libogg-1.3.4
