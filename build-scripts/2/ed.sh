libarchive
if [ -z "$old" ];
then
   exit
fi
wget https://ftp.gnu.org/gnu/ed/ed-1.17.tar.lz

tar -xvf ed-1.17.tar.lz
cd 
./configure --prefix=/usr --bindir=/bin &&
make
make install
cd ..
rm ed-1.17.tar.lz
rm -rf 