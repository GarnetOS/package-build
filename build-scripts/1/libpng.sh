if [ -z "$old" ];
then
   exit
fi
wget  https://downloads.sourceforge.net/libpng/libpng-1.6.37.tar.xz

wget https://downloads.sourceforge.net/sourceforge/libpng-apng/libpng-1.6.37-apng.patch.gz

tar -xvf libpng-1.6.37.tar.xz
cd libpng-1.6.37
gzip -cd ../libpng-1.6.37-apng.patch.gz | patch -p1
./configure --prefix=/usr --disable-static &&
make
make install &&
mkdir -v /usr/share/doc/libpng-1.6.37 &&
cp -v README libpng-manual.txt /usr/share/doc/libpng-1.6.37


cd ..
rm libpng-1.6.37.tar.xz
rm -rf libpng-1.6.37