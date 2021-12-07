if [ -z "$old" ];
then
   exit
fi
wget https://www.samba.org/ftp/talloc/talloc-2.3.3.tar.gz

tar -xvf talloc-2.3.3.tar.gz
cd talloc-2.3.3
./configure --prefix=/usr &&
make
make install
cd ..
rm talloc-2.3.3.tar.gz
rm -rf talloc-2.3.3