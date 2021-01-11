build-scripts/prepare.sh
wget https://get.videolan.org/libdvdnav/6.1.0/libdvdnav-6.1.0.tar.bz2
tar -xvf libdvdnav-6.1.0.tar.bz2
cd libdvdnav-6.1.0.
install_deps libdvdread
./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/libdvdnav-6.1.0 &&
make
make install
cd ..
rm libdvdnav-6.1.0.tar.bz2
rm -rf libdvdnav-6.1.0.