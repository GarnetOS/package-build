build-scripts/prepare.sh
wget http://0pointer.de/public/libatasmart-0.19.tar.xz
tar -xvf libatasmart-0.19.tar.xz
cd libatasmart-0.19
./configure --prefix=/usr --disable-static &&
make
make docdir=/usr/share/doc/libatasmart-0.19 install
cd ..
rm -rf libatasmart-0.19
rm libatasmart-0.19.tar.xz
