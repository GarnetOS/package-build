if [ -z "$old" ];
then
   exit
fi
wget https://ftp.debian.org/debian/pool/main/liba/libaio/libaio_0.3.112.orig.tar.xz

tar -xvf libaio_0.3.112.orig.tar.xz
cd libaio_0.3.112.orig
sed -i '/install.*libaio.a/s/^/#/' src/Makefile
make
sed 's/-Werror//' -i harness/Makefile
make install	
cd ..
rm libaio_0.3.112.orig.tar.xz
rm -rf libaio_0.3.112.orig