if [ -z "$old" ];
then
   exit
fi
wget https://github.com/thom311/libnl/releases/download/libnl3_5_0/libnl-3.5.0.tar.gz

tar -xvf libnl-3.5.0.tar.gz
cd libnl-3.5.0
./configure --prefix=/usr     \
            --sysconfdir=/etc \
            --disable-static  &&
make
make install
mkdir -vp /usr/share/doc/libnl-3.5.0 &&
tar -xf ../libnl-doc-3.5.0.tar.gz --strip-components=1 --no-same-owner \
    -C  /usr/share/doc/libnl-3.5.0
cd ..
rm libnl-3.5.0.tar.gz
rm -rf libnl-3.5.0