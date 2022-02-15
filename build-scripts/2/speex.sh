libogg
if [ -z "$old" ];
then
   exit
fi
wget https://downloads.xiph.org/releases/speex/speex-1.2.0.tar.gz

wget https://downloads.xiph.org/releases/speex/speexdsp-1.2.0.tar.gz

tar -xvf speex-1.2.0.tar.gz
cd speex-1.2.0
./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/speex-1.2.0 &&
make
make install
cd ..                          &&
tar -xf speexdsp-1.2.0.tar.gz &&
cd speexdsp-1.2.0             &&

./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/speexdsp-1.2.0 &&
make
make install
cd ..
rm speex-1.2.0.tar.gz
rm -rf speex-1.2.0