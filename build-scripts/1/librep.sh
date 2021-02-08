build-scripts/prepare.sh
wget http://download.tuxfamily.org/librep/librep_0.92.7.tar.xz

tar -xvf librep_0.92.7.tar.xz
cd librep_0.92.7
./configure --prefix=/usr --disable-static &&
make
sed -i '5043,5044 d' libtool &&
make install
cd ..
rm librep_0.92.7.tar.xz
rm -rf librep_0.92.7