if [ -z "$old" ];
then
   exit
fi
wget https://www.kernel.org/pub/linux/bluetooth/sbc-1.5.tar.xz

tar -xvf sbc-1.5.tar.xz
cd sbc-1.5
./configure --prefix=/usr --disable-static --disable-tester &&
make
make install
cd ..
rm sbc-1.5.tar.xz
rm -rf sbc-1.5