if [ -z "$old" ];
then
   exit
fi
wget https://github.com/libarchive/libarchive/releases/download/v3.5.2/libarchive-3.5.2.tar.xz

tar -xvf libarchive-3.5.2.tar.xz
cd libarchive-3.5.2
./configure --prefix=/usr --disable-static &&
make
make install
cd ..
rm libarchive-3.5.2.tar.xz
rm -rf libarchive-3.5.2