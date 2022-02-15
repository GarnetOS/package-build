rpcsvc-proto
libtirpc
if [ -z "$old" ];
then
   exit
fi
wget https://github.com/thkukuk/libnsl/releases/download/v1.3.0/libnsl-1.3.0.tar.xz

tar -xvf libnsl-1.3.0.tar.xz
cd libnsl-1.3.0
autoreconf -fi                &&
./configure --sysconfdir=/etc --disable-static &&
make
make install
cd ..
rm libnsl-1.3.0.tar.xz
rm -rf libnsl-1.3.0