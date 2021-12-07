if [ -z "$old" ];
then
   exit
fi
wget  https://downloads.sourceforge.net/lcms/lcms-1.19.tar.gz

wget https://www.linuxfromscratch.org/patches/blfs/11.0/lcms-1.19-cve_2013_4276-1.patch

tar -xvf lcms-1.19.tar.gz
cd lcms-1.19
patch -Np1 -i ../lcms-1.19-cve_2013_4276-1.patch &&

./configure --prefix=/usr --disable-static       &&
make
make install &&
install -v -m755 -d /usr/share/doc/lcms-1.19 &&
install -v -m644    README.1ST doc/* \
                    /usr/share/doc/lcms-1.19
cd ..
rm lcms-1.19.tar.gz
rm -rf lcms-1.19