build-scripts/prepare.sh
wget https://ftp.gnu.org/gnu/autoconf/autoconf-2.13.tar.gz

wget http://www.linuxfromscratch.org/patches/blfs/10.0/autoconf-2.13-consolidated_fixes-1.patch

tar -xvf autoconf-2.13.tar.gz
cd autoconf-2.13
patch -Np1 -i ../autoconf-2.13-consolidated_fixes-1.patch &&
mv -v autoconf.texi autoconf213.texi                      &&
rm -v autoconf.info                                       &&
./configure --prefix=/usr --program-suffix=2.13           &&
make
make install                                      &&
install -v -m644 autoconf213.info /usr/share/info &&
install-info --info-dir=/usr/share/info autoconf213.info
cd ..
rm autoconf-2.13.tar.gz
rm -rf autoconf-2.13