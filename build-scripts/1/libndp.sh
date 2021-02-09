build-scripts/prepare.sh
wget http://libndp.org/files/libndp-1.7.tar.gz

tar -xvf libndp-1.7.tar.gz
cd libndp-1.7
./configure --prefix=/usr        \
            --sysconfdir=/etc    \
            --localstatedir=/var \
            --disable-static     &&
make
make install
cd ..
rm libndp-1.7.tar.gz
rm -rf libndp-1.7
