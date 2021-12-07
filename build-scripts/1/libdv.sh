if [ -z "$old" ];
then
   exit
fi
wget https://downloads.sourceforge.net/libdv/libdv-1.0.0.tar.gz

tar -xvf libdv-1.0.0.tar.gz
cd libdv-1.0.0
./configure --prefix=/usr \
            --disable-xv \
            --disable-static &&
make
make install &&
install -v -m755 -d      /usr/share/doc/libdv-1.0.0 &&
install -v -m644 README* /usr/share/doc/libdv-1.0.0
cd ..
rm libdv-1.0.0.tar.gz
rm -rf libdv-1.0.0