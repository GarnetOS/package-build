if [ -z "$old" ];
then
   exit
fi
wget https://archive.mozilla.org/pub/opus/opus-1.3.1.tar.gz

tar -xvf opus-1.3.1.tar.gz
cd opus-1.3.1
./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/opus-1.3.1 &&
make
make install
cd ..
rm opus-1.3.1.tar.gz
rm -rf opus-1.3.1