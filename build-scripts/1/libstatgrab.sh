if [ -z "$old" ];
then
   exit
fi
wget https://www.mirrorservice.org/sites/ftp.i-scream.org/pub/i-scream/libstatgrab/libstatgrab-0.92.1.tar.gz

tar -xvf libstatgrab-0.92.1.tar.gz
cd libstatgrab-0.92.1
./configure --prefix=/usr   \
            --disable-static \
            --docdir=/usr/share/doc/libstatgrab-0.92.1 &&
make
make install
cd ..
rm libstatgrab-0.92.1.tar.gz
rm -rf libstatgrab-0.92.1