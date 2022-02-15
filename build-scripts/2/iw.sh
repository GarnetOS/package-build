libnl
if [ -z "$old" ];
then
   exit
fi
wget https://www.kernel.org/pub/software/network/iw/iw-5.9.tar.xz

tar -xvf iw-5.9.tar.xz
cd iw-5.9
sed -i "/INSTALL.*gz/s/.gz//" Makefile &&
make
make install
cd ..
rm iw-5.9.tar.xz
rm -rf iw-5.9