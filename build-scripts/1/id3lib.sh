if [ -z "$old" ];
then
   exit
fi
wget https://downloads.sourceforge.net/id3lib/id3lib-3.8.3.tar.gz

wget https://www.linuxfromscratch.org/patches/blfs/11.0/id3lib-3.8.3-consolidated_patches-1.patch

tar -xvf id3lib-3.8.3.tar.gz
cd id3lib-3.8.3
patch -Np1 -i ../id3lib-3.8.3-consolidated_patches-1.patch &&

libtoolize -fc                &&
aclocal                       &&
autoconf                      &&
automake --add-missing --copy &&

./configure --prefix=/usr --disable-static &&
make
make install  &&
cp doc/man/* /usr/share/man/man1 &&

install -v -m755 -d /usr/share/doc/id3lib-3.8.3 &&
install -v -m644 doc/*.{gif,jpg,png,ico,css,txt,php,html} \
                    /usr/share/doc/id3lib-3.8.3
cd ..
rm id3lib-3.8.3.tar.gz
rm -rf id3lib-3.8.3