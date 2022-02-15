if [ -z "$old" ];
then
   exit
fi
wget https://www.nlnetlabs.nl/downloads/ldns/ldns-1.7.1.tar.gz

tar -xvf ldns-1.7.1.tar.gz
cd ldns-1.7.1
./configure --prefix=/usr           \
            --sysconfdir=/etc       \
            --disable-static        \
            --with-drill            &&
make
make doc
make install
install -v -m755 -d /usr/share/doc/ldns-1.7.1 &&
install -v -m644 doc/html/* /usr/share/doc/ldns-1.7.1


cd ..
rm ldns-1.7.1.tar.gz
rm -rf ldns-1.7.1