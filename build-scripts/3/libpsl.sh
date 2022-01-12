libidn2
if [ -z "$old" ];
then
   exit
fi
wget https://github.com/rockdaboot/libpsl/releases/download/0.21.1/libpsl-0.21.1.tar.gz

tar -xvf libpsl-0.21.1.tar.gz
cd libpsl-0.21.1
sed -i 's/env python/&3/' src/psl-make-dafsa &&
./configure --prefix=/usr --disable-static       &&
make
make install
cd ..
rm libpsl-0.21.1.tar.gz
rm -rf libpsl-0.21.1