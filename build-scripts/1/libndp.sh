if [ -z "$old" ];
then
   exit
fi
wget http://libndp.org/files/libndp-1.8.tar.gz

tar -xvf libndp-1.8.tar.gz
cd libndp-1.8
./configure --prefix=/usr        \
            --sysconfdir=/etc    \
            --localstatedir=/var \
            --disable-static     &&
make
make install
cd ..
rm libndp-1.8.tar.gz
rm -rf libndp-1.8