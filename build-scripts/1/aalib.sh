if [ -z "$old" ];
then
   exit
fi
wget https://downloads.sourceforge.net/aa-project/aalib-1.4rc5.tar.gz

tar -xvf aalib-1.4rc5.tar.gz
cd aalib-1.4rc5
sed -i -e '/AM_PATH_AALIB,/s/AM_PATH_AALIB/[&]/' aalib.m4make install
./configure --prefix=/usr             \
            --infodir=/usr/share/info \
            --mandir=/usr/share/man   \
            --disable-static          &&
make
make install
cd ..
rm aalib-1.4rc5.tar.gz
rm -rf aalib-1.4rc5