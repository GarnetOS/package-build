LVM2
if [ -z "$old" ];
then
   exit
fi
wget https://ftp.gnu.org/gnu/parted/parted-3.4.tar.xz

wget ftp://ftp.gnu.org/gnu/parted/parted-3.4.tar.xz

tar -xvf parted-3.4.tar.xz
cd parted-3.4
./configure --prefix=/usr --disable-static &&
make &&

make -C doc html                                       &&
makeinfo --html      -o doc/html       doc/parted.texi &&
makeinfo --plaintext -o doc/parted.txt doc/parted.texi
texi2pdf             -o doc/parted.pdf doc/parted.texi &&
texi2dvi             -o doc/parted.dvi doc/parted.texi &&
dvips                -o doc/parted.ps  doc/parted.dvi
make check
make install &&
install -v -m755 -d /usr/share/doc/parted-3.4/html &&
install -v -m644    doc/html/* \
                    /usr/share/doc/parted-3.4/html &&
install -v -m644    doc/{FAT,API,parted.{txt,html}} \
                    /usr/share/doc/parted-3.4
install -v -m644 doc/FAT doc/API doc/parted.{pdf,ps,dvi} \
                    /usr/share/doc/parted-3.4
cd ..
rm parted-3.4.tar.xz
rm -rf parted-3.4