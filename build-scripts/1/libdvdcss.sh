if [ -z "$old" ];
then
   exit
fi
wget https://get.videolan.org/libdvdcss/1.4.3/libdvdcss-1.4.3.tar.bz2

tar -xvf libdvdcss-1.4.3.tar.bz2
cd libdvdcss-1.4.3.
./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/libdvdcss-1.4.3 &&
make
make install
cd ..
rm libdvdcss-1.4.3.tar.bz2
rm -rf libdvdcss-1.4.3.