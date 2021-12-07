if [ -z "$old" ];
then
   exit
fi
wget https://downloads.xiph.org/releases/ao/libao-1.2.0.tar.gz

tar -xvf libao-1.2.0.tar.gz
cd libao-1.2.0
./configure --prefix=/usr &&
make
make install &&
install -v -m644 README /usr/share/doc/libao-1.2.0
cd ..
rm libao-1.2.0.tar.gz
rm -rf libao-1.2.0