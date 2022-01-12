libburn libisofs
if [ -z "$old" ];
then
   exit
fi
wget https://files.libburnia-project.org/releases/libisoburn-1.5.4.tar.gz

tar -xvf libisoburn-1.5.4.tar.gz
cd libisoburn-1.5.4
./configure --prefix=/usr              \
            --disable-static           \
            --enable-pkg-check-modules &&
make
doxygen doc/doxygen.conf
make install
install -v -dm755 /usr/share/doc/libisoburn-1.5.4 &&
install -v -m644 doc/html/* /usr/share/doc/libisoburn-1.5.4
cd ..
rm libisoburn-1.5.4.tar.gz
rm -rf libisoburn-1.5.4