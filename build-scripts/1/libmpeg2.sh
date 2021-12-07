if [ -z "$old" ];
then
   exit
fi
wget http://libmpeg2.sourceforge.net/files/libmpeg2-0.5.1.tar.gz

tar -xvf libmpeg2-0.5.1.tar.gz
cd libmpeg2-0.5.1
sed -i 's/static const/static/' libmpeg2/idct_mmx.c &&

./configure --prefix=/usr    \
            --enable-shared  \
            --disable-static &&
make
make install &&

install -v -m755 -d /usr/share/doc/mpeg2dec-0.5.1 &&
install -v -m644 README doc/libmpeg2.txt \
                    /usr/share/doc/mpeg2dec-0.5.1
cd ..
rm libmpeg2-0.5.1.tar.gz
rm -rf libmpeg2-0.5.1