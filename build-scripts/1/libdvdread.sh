build-scripts/prepare.sh
wget https://get.videolan.org/libdvdread/6.1.1/libdvdread-6.1.1.tar.bz2
tar -xvf libdvdread-6.1.1.tar.bz2
cd libdvdread-6.1.1
./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/libdvdread-6.1.1 &&
make
make install
cd ..
rm libdvdread-6.1.1.tar.bz2
rm -rf libdvdread-6.1.1
