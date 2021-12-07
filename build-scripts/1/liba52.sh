if [ -z "$old" ];
then
   exit
fi
wget http://liba52.sourceforge.net/files/a52dec-0.7.4.tar.gz

tar -xvf a52dec-0.7.4.tar.gz
cd a52dec-0.7.4
./configure --prefix=/usr \
            --mandir=/usr/share/man \
            --enable-shared \
            --disable-static \
            CFLAGS="${CFLAGS:--g -O2} $([ $(uname -m) = x86_64 ] && echo -fPIC)" &&
make
make install &&
cp liba52/a52_internal.h /usr/include/a52dec &&
install -v -m644 -D doc/liba52.txt \
    /usr/share/doc/liba52-0.7.4/liba52.txt

cd ..
rm a52dec-0.7.4.tar.gz
rm -rf a52dec-0.7.4