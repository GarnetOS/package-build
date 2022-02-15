libogg
if [ -z "$old" ];
then
   exit
fi
wget https://downloads.xiph.org/releases/vorbis/libvorbis-1.3.7.tar.xz

tar -xvf libvorbis-1.3.7.tar.xz
cd libvorbis-1.3.7
./configure --prefix=/usr --disable-static &&
make
make install &&
install -v -m644 doc/Vorbis* /usr/share/doc/libvorbis-1.3.7

cd ..
rm libvorbis-1.3.7.tar.xz
rm -rf libvorbis-1.3.7