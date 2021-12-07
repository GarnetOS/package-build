if [ -z "$old" ];
then
   exit
fi
wget https://www.nano-editor.org/dist/v5/nano-5.8.tar.xz

tar -xvf nano-5.8.tar.xz
cd nano-5.8
./configure --prefix=/usr     \
            --sysconfdir=/etc \
            --enable-utf8     \
            --docdir=/usr/share/doc/nano-5.8 &&
make
make install &&
install -v -m644 doc/{nano.html,sample.nanorc} /usr/share/doc/nano-5.8
cd ..
rm nano-5.8.tar.xz
rm -rf nano-5.8