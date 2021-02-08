build-scripts/prepare.sh
wget https://www.gnupg.org/ftp/gcrypt/libgpg-error/libgpg-error-1.38.tar.bz2
tar -xvf libgpg-error-1.38.tar.bz2
cd libgpg-error-1.38
./configure --prefix=/usr &&
make
make install &&
install -v -m644 -D README /usr/share/doc/libgpg-error-1.38/README
cd ..
rm libgpg-error-1.38.tar.bz2
rm -rf libgpg-error-1.38
