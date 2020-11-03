build-scripts/prepare.sh
wget http://ftp.de.debian.org/debian/pool/main/liba/libaio/libaio_0.3.112.orig.tar.xz
tar -xvf libaio_0.3.112.orig.tar.xz
cd libaio_0.3.112
sed -i '/install.*libaio.a/s/^/#/' src/Makefile
make
make install
cd ..
rm -rf libaio_0.3.112
rm libaio_0.3.112.orig.tar.xz
