if [ -z "$old" ];
then
   exit
fi
wget https://downloads.sourceforge.net/libcddb/libcddb-1.3.2.tar.bz2

tar -xvf libcddb-1.3.2.tar.bz2
cd libcddb-1.3.2.
./configure --prefix=/usr --disable-static &&
make
make install
cd ..
rm libcddb-1.3.2.tar.bz2
rm -rf libcddb-1.3.2.