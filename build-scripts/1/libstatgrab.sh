build-scripts/prepare.sh
wget http://www.mirrorservice.org/sites/ftp.i-scream.org/pub/i-scream/libstatgrab/libstatgrab-0.92.tar.gz
tar -xvf libstatgrab-0.92.tar.gz
cd libstatgrab-0.92
./configure --prefix=/usr   \
            --disable-static \
            --docdir=/usr/share/doc/libstatgrab-0.92 &&
make
make install
cd ..
rm libstatgrab-0.92.tar.gz
rm -rf libstatgrab-0.92
