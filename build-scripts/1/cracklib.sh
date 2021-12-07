if [ -z "$old" ];
then
   exit
fi
wget https://github.com/cracklib/cracklib/releases/download/v2.9.7/cracklib-2.9.7.tar.bz2

tar -xvf cracklib-2.9.7.tar.bz2
cd cracklib-2.9.7.
sed -i '/skipping/d' util/packer.c &&

PYTHON=python3 CPPFLAGS=-I/usr/include/python3.9 \
./configure --prefix=/usr    \
            --disable-static \
            --with-default-dict=/usr/lib/cracklib/pw_dict &&
make
make install
install -v -m644 -D    ../cracklib-words-2.9.7.bz2 \
                         /usr/share/dict/cracklib-words.bz2    &&

bunzip2 -v               /usr/share/dict/cracklib-words.bz2    &&
ln -v -sf cracklib-words /usr/share/dict/words                 &&
echo $(hostname) >>      /usr/share/dict/cracklib-extra-words  &&
install -v -m755 -d      /usr/lib/cracklib                     &&

create-cracklib-dict     /usr/share/dict/cracklib-words \
                         /usr/share/dict/cracklib-extra-words
make test
cd ..
rm cracklib-2.9.7.tar.bz2
rm -rf cracklib-2.9.7.