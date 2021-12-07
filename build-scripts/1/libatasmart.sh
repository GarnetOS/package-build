if [ -z "$old" ];
then
   exit
fi
wget http://0pointer.de/public/libatasmart-0.19.tar.xz

tar -xvf libatasmart-0.19.tar.xz
cd libatasmart-0.19
./configure --prefix=/usr --disable-static &&
make
make docdir=/usr/share/doc/libatasmart-0.19 install
cd ..
rm libatasmart-0.19.tar.xz
rm -rf libatasmart-0.19
