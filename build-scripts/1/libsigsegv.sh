if [ -z "$old" ];
then
   exit
fi
wget https://ftp.gnu.org/gnu/libsigsegv/libsigsegv-2.13.tar.gz

tar -xvf libsigsegv-2.13.tar.gz
cd libsigsegv-2.13
./configure --prefix=/usr   \
            --enable-shared \
            --disable-static &&
make
make install
cd ..
rm libsigsegv-2.13.tar.gz
rm -rf libsigsegv-2.13