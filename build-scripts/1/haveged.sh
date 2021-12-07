if [ -z "$old" ];
then
   exit
fi
wget https://github.com/jirka-h/haveged/archive/v1.9.14/haveged-1.9.14.tar.gz

tar -xvf haveged-1.9.14.tar.gz
cd haveged-1.9.14
./configure --prefix=/usr --disable-static &&
make
make install &&
mkdir -pv    /usr/share/doc/haveged-1.9.14 &&
cp -v README /usr/share/doc/haveged-1.9.14
make install-haveged
cd ..
rm haveged-1.9.14.tar.gz
rm -rf haveged-1.9.140200818.tar.xz
tar -xvf blfs-bootscripts-20200818.tar.xz
cd blfs-bootscripts-20200818
make install-haveged
cd ..
rm -rf blfs-bootscripts-20200818
rm blfs-bootscripts-20200818.tar.xz
rm haveged-1.9.13.tar.gz
rm -rf haveged-1.9.13
