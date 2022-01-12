libunistring
if [ -z "$old" ];
then
   exit
fi
wget https://ftp.gnu.org/gnu/libidn/libidn2-2.3.2.tar.gz

tar -xvf libidn2-2.3.2.tar.gz
cd libidn2-2.3.2
./configure --prefix=/usr --disable-static &&
make
make install
cd ..
rm libidn2-2.3.2.tar.gz
rm -rf libidn2-2.3.2