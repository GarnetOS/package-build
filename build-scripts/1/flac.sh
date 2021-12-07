if [ -z "$old" ];
then
   exit
fi
wget https://downloads.xiph.org/releases/flac/flac-1.3.3.tar.xz

wget https://www.linuxfromscratch.org/patches/blfs/11.0/flac-1.3.3-security_fixes-1.patch

tar -xvf flac-1.3.3.tar.xz
cd flac-1.3.3
patch -Np1 -i ../flac-1.3.3-security_fixes-1.patch      &&
./configure --prefix=/usr                                \
            --disable-thorough-tests                     \
            --docdir=/usr/share/doc/flac-1.3.3          &&
make
make install
cd ..
rm flac-1.3.3.tar.xz
rm -rf flac-1.3.3