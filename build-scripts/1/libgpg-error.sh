if [ -z "$old" ];
then
   exit
fi
wget https://www.gnupg.org/ftp/gcrypt/libgpg-error/libgpg-error-1.42.tar.bz2

tar -xvf libgpg-error-1.42.tar.bz2
cd libgpg-error-1.42.
./configure --prefix=/usr &&
make
make install &&
install -v -m644 -D README /usr/share/doc/libgpg-error-1.42/README
cd ..
rm libgpg-error-1.42.tar.bz2
rm -rf libgpg-error-1.42.