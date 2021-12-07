if [ -z "$old" ];
then
   exit
fi
wget https://github.com/rhboot/efivar/releases/download/37/efivar-37.tar.bz2

wget https://www.linuxfromscratch.org/patches/blfs/11.0/efivar-37-gcc_9-1.patch

tar -xvf efivar-37.tar.bz2
cd efivar-37.
patch -Np1 -i ../efivar-37-gcc_9-1.patch
make CFLAGS="-O2 -Wno-stringop-truncation"
make install LIBDIR=/usr/lib
cd ..
rm efivar-37.tar.bz2
rm -rf efivar-37.