if [ -z "$old" ];
then
   exit
fi
wget https://downloads.sourceforge.net/libquicktime/libquicktime-1.2.4.tar.gz

wget https://www.linuxfromscratch.org/patches/blfs/11.0/libquicktime-1.2.4-ffmpeg4-1.patch

tar -xvf libquicktime-1.2.4.tar.gz
cd libquicktime-1.2.4
patch -Np1 -i ../libquicktime-1.2.4-ffmpeg4-1.patch &&

./configure --prefix=/usr     \
            --enable-gpl      \
            --without-doxygen \
            --docdir=/usr/share/doc/libquicktime-1.2.4
make
make install &&

install -v -m755 -d /usr/share/doc/libquicktime-1.2.4 &&
install -v -m644    README doc/{*.txt,*.html,mainpage.incl} \
                    /usr/share/doc/libquicktime-1.2.4
cd ..
rm libquicktime-1.2.4.tar.gz
rm -rf libquicktime-1.2.4