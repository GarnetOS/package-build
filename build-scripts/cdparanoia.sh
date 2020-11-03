build-scripts/prepare.sh
wget https://downloads.xiph.org/releases/cdparanoia/cdparanoia-III-10.2.src.tgz
wget http://www.linuxfromscratch.org/patches/blfs/10.0/cdparanoia-III-10.2-gcc_fixes-1.patch
tar -xvf cdparanoia-III-10.2.src.tgz
cd cdparanoia-III-10.2
patch -Np1 -i ../cdparanoia-III-10.2-gcc_fixes-1.patch &&
./configure --prefix=/usr --mandir=/usr/share/man &&
make -j1
make install &&
chmod -v 755 /usr/lib/libcdda_*.so.0.10.2
cd ..
rm cdparanoia-III-10.2.src.tgz
rm -rf cdparanoia-III-10.2
