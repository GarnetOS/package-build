if [ -z "$old" ];
then
   exit
fi
wget https://ftp.gnu.org/gnu/nettle/nettle-3.7.3.tar.gz

tar -xvf nettle-3.7.3.tar.gz
cd nettle-3.7.3
./configure --prefix=/usr --disable-static &&
make
make install &&
chmod   -v   755 /usr/lib/lib{hogweed,nettle}.so &&
install -v -m755 -d /usr/share/doc/nettle-3.7.3 &&
install -v -m644 nettle.html /usr/share/doc/nettle-3.7.3
cd ..
rm nettle-3.7.3.tar.gz
rm -rf nettle-3.7.3