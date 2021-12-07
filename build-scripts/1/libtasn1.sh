if [ -z "$old" ];
then
   exit
fi
wget https://ftp.gnu.org/gnu/libtasn1/libtasn1-4.17.0.tar.gz

tar -xvf libtasn1-4.17.0.tar.gz
cd libtasn1-4.17.0
./configure --prefix=/usr --disable-static &&
make
make install
make -C doc/reference install-data-local
cd ..
rm libtasn1-4.17.0.tar.gz
rm -rf libtasn1-4.17.0