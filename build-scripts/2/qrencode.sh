libpng
if [ -z "$old" ];
then
   exit
fi
wget https://fukuchi.org/works/qrencode/qrencode-4.1.1.tar.bz2

tar -xvf qrencode-4.1.1.tar.bz2
cd qrencode-4.1.1.
./configure --prefix=/usr &&
make
doxygen
make install
install -vdm 755 /usr/share/doc/qrencode-4.1.1 &&
mv html/* /usr/share/doc/qrencode-4.1.1
cd ..
rm qrencode-4.1.1.tar.bz2
rm -rf qrencode-4.1.1.