libgpg-error
if [ -z "$old" ];
then
   exit
fi
wget https://www.gnupg.org/ftp/gcrypt/libksba/libksba-1.6.0.tar.bz2

tar -xvf libksba-1.6.0.tar.bz2
cd libksba-1.6.0.
./configure --prefix=/usr &&
make
make install
cd ..
rm libksba-1.6.0.tar.bz2
rm -rf libksba-1.6.0.