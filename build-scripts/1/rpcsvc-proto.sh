if [ -z "$old" ];
then
   exit
fi
wget https://github.com/thkukuk/rpcsvc-proto/releases/download/v1.4.2/rpcsvc-proto-1.4.2.tar.xz

tar -xvf rpcsvc-proto-1.4.2.tar.xz
cd rpcsvc-proto-1.4.2
./configure --sysconfdir=/etc &&
make
make install
cd ..
rm rpcsvc-proto-1.4.2.tar.xz
rm -rf rpcsvc-proto-1.4.2