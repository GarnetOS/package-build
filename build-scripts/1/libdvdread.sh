if [ -z "$old" ];
then
   exit
fi
wget https://get.videolan.org/libdvdread/6.1.2/libdvdread-6.1.2.tar.bz2

tar -xvf libdvdread-6.1.2.tar.bz2
cd libdvdread-6.1.2.
./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/libdvdread-6.1.2 &&
make
make install
cd ..
rm libdvdread-6.1.2.tar.bz2
rm -rf libdvdread-6.1.2.
