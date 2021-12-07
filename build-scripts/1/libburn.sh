if [ -z "$old" ];
then
   exit
fi
wget https://files.libburnia-project.org/releases/libburn-1.5.4.tar.gz

tar -xvf libburn-1.5.4.tar.gz
cd libburn-1.5.4
./configure --prefix=/usr --disable-static &&
make
doxygen doc/doxygen.conf
make install
install -v -dm755 /usr/share/doc/libburn-1.5.4 &&
install -v -m644 doc/html/* /usr/share/doc/libburn-1.5.4
cd ..
rm libburn-1.5.4.tar.gz
rm -rf libburn-1.5.4