if [ -z "$old" ];
then
   exit
fi
wget http://fy.chalmers.se/~appro/linux/DVD+RW/tools/dvd+rw-tools-7.1.tar.gz

tar -xvf dvd+rw-tools-7.1.tar.gz
cd dvd+rw-tools-7.1
sed -i '/stat.h/a #include <sys/sysmacros.h>' growisofs.c &&
sed -i '/stdlib/a #include <limits.h>' transport.hxx &&
make all rpl8 btcflash
make prefix=/usr install &&
install -v -m644 -D index.html \
    /usr/share/doc/dvd+rw-tools-7.1/index.html
cd ..
rm dvd+rw-tools-7.1.tar.gz
rm -rf dvd+rw-tools-7.1