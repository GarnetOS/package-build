if [ -z "$old" ];
then
   exit
fi
wget https://www.oberhumer.com/opensource/lzo/download/lzo-2.10.tar.gz

tar -xvf lzo-2.10.tar.gz
cd lzo-2.10
./configure --prefix=/usr                    \
            --enable-shared                  \
            --disable-static                 \
            --docdir=/usr/share/doc/lzo-2.10 &&
make
make install
cd ..
rm lzo-2.10.tar.gz
rm -rf lzo-2.10