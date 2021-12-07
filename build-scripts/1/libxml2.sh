if [ -z "$old" ];
then
   exit
fi
wget http://xmlsoft.org/sources/libxml2-2.9.12.tar.gz

wget https://www.w3.org/XML/Test/xmlts20130923.tar.gz 

tar -xvf libxml2-2.9.12.tar.gz
cd libxml2-2.9.12
./configure --prefix=/usr    \
            --disable-static \
            --with-history   \
            --with-python=/usr/bin/python3 &&
make
tar xf ../xmlts20130923.tar.gz
/etc/init.d/httpd stop
make install
cd ..
rm libxml2-2.9.12.tar.gz
rm -rf libxml2-2.9.12