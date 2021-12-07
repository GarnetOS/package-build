if [ -z "$old" ];
then
   exit
fi
wget https://files.libburnia-project.org/releases/libisofs-1.5.4.tar.gz

tar -xvf libisofs-1.5.4.tar.gz
cd libisofs-1.5.4
./configure --prefix=/usr --disable-static &&
make
doxygen doc/doxygen.conf
make install
install -v -dm755 /usr/share/doc/libisofs-1.5.4 &&
install -v -m644 doc/html/* /usr/share/doc/libisofs-1.5.4
cd ..
rm libisofs-1.5.4.tar.gz
rm -rf libisofs-1.5.4