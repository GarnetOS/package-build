if [ -z "$old" ];
then
   exit
fi
wget https://downloads.xvid.com/downloads/xvidcore-1.3.7.tar.gz

tar -xvf xvidcore-1.3.7.tar.gz
cd xvidcore-1.3.7
cd build/generic &&
sed -i 's/^LN_S=@LN_S@/& -f -v/' platform.inc.in &&
./configure --prefix=/usr &&
make
sed -i '/libdir.*STATIC_LIB/ s/^/#/' Makefile &&
make install &&

chmod -v 755 /usr/lib/libxvidcore.so.4.3 &&
install -v -m755 -d /usr/share/doc/xvidcore-1.3.7/examples &&
install -v -m644 ../../doc/* /usr/share/doc/xvidcore-1.3.7 &&
install -v -m644 ../../examples/* \
    /usr/share/doc/xvidcore-1.3.7/examples
cd ..
rm xvidcore-1.3.7.tar.gz
rm -rf xvidcore-1.3.7