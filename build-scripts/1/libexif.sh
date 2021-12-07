if [ -z "$old" ];
then
   exit
fi
wget https://github.com/libexif/libexif/releases/download/libexif-0_6_22-release/libexif-0.6.22.tar.xz

wget https://www.linuxfromscratch.org/patches/blfs/11.0/libexif-0.6.22-security_fixes-1.patch

tar -xvf libexif-0.6.22.tar.xz
cd libexif-0.6.22
patch -Np1 -i ../libexif-0.6.22-security_fixes-1.patch
./configure --prefix=/usr    \
            --disable-static \
            --with-doc-dir=/usr/share/doc/libexif-0.6.22 &&
make
make install
cd ..
rm libexif-0.6.22.tar.xz
rm -rf libexif-0.6.22