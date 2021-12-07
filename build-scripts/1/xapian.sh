if [ -z "$old" ];
then
   exit
fi
wget https://oligarchy.co.uk/xapian/1.4.18/xapian-core-1.4.18.tar.xz

tar -xvf xapian-core-1.4.18.tar.xz
cd xapian-core-1.4.18
./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/xapian-core-1.4.18 &&
make
make install
cd ..
rm xapian-core-1.4.18.tar.xz
rm -rf xapian-core-1.4.18