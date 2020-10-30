#/bin/sh
wget https://archive.apache.org/dist/apr/apr-1.7.0.tar.bz2	
tar -xvf apr-1.7.0.tar.bz2	
cd apr-1.7.0	
./configure --prefix=/usr    \	
            --disable-static \	
            --with-installbuilddir=/usr/share/apr-1/build &&	
make	
make install
