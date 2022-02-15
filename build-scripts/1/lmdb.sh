if [ -z "$old" ];
then
   exit
fi
wget https://github.com/LMDB/lmdb/archive/LMDB_0.9.29.tar.gz

tar -xvf LMDB_0.9.29.tar.gz
cd LMDB_0.9.29
cd libraries/liblmdb &&
make                 &&
sed -i 's| liblmdb.a||' Makefile
make prefix=/usr install
cd ..
rm LMDB_0.9.29.tar.gz
rm -rf LMDB_0.9.29