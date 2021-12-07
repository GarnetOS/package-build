if [ -z "$old" ];
then
   exit
fi
wget https://ftp.gnu.org/gnu/enscript/enscript-1.6.6.tar.gz

tar -xvf enscript-1.6.6.tar.gz
cd enscript-1.6.6
./configure --prefix=/usr              \
            --sysconfdir=/etc/enscript \
            --localstatedir=/var       \
            --with-media=Letter &&
make &&

pushd docs &&
  makeinfo --plaintext -o enscript.txt enscript.texi &&
popd
make -j1 -C docs ps pdf
make install &&

install -v -m755 -d /usr/share/doc/enscript-1.6.6 &&
install -v -m644    README* *.txt docs/*.txt \
                    /usr/share/doc/enscript-1.6.6
install -v -m644 docs/*.{dvi,pdf,ps} \
                 /usr/share/doc/enscript-1.6.6
cd ..
rm enscript-1.6.6.tar.gz
rm -rf enscript-1.6.6