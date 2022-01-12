libgpg-error
if [ -z "$old" ];
then
   exit
fi
wget https://www.gnupg.org/ftp/gcrypt/libassuan/libassuan-2.5.5.tar.bz2

tar -xvf libassuan-2.5.5.tar.bz2
cd libassuan-2.5.5.
./configure --prefix=/usr &&
make                      &&

make -C doc html                                                       &&
makeinfo --html --no-split -o doc/assuan_nochunks.html doc/assuan.texi &&
makeinfo --plaintext       -o doc/assuan.txt           doc/assuan.texi
make -C doc pdf ps
make install &&

install -v -dm755   /usr/share/doc/libassuan-2.5.5/html &&
install -v -m644 doc/assuan.html/* \
                    /usr/share/doc/libassuan-2.5.5/html &&
install -v -m644 doc/assuan_nochunks.html \
                    /usr/share/doc/libassuan-2.5.5      &&
install -v -m644 doc/assuan.{txt,texi} \
                    /usr/share/doc/libassuan-2.5.5
install -v -m644  doc/assuan.{pdf,ps,dvi} \
                  /usr/share/doc/libassuan-2.5.5
cd ..
rm libassuan-2.5.5.tar.bz2
rm -rf libassuan-2.5.5.