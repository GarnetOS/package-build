if [ -z "$old" ];
then
   exit
fi
wget https://ftp.debian.org/debian/pool/main/h/heirloom-mailx/heirloom-mailx_12.5.orig.tar.gz

wget https://www.linuxfromscratch.org/patches/blfs/11.0/heirloom-mailx-12.5-fixes-1.patch

tar -xvf heirloom-mailx_12.5.orig.tar.gz
cd heirloom-mailx_12.5.orig
patch -Np1 -i ../heirloom-mailx-12.5-fixes-1.patch &&

sed 's@<openssl@<openssl-1.0/openssl@' \
    -i openssl.c fio.c makeconfig      &&

make -j1 LDFLAGS+="-L /usr/lib/openssl-1.0/" \
     SENDMAIL=/usr/sbin/sendmail
make PREFIX=/usr UCBINSTALL=/usr/bin/install install &&

ln -v -sf mailx /usr/bin/mail &&
ln -v -sf mailx /usr/bin/nail &&

install -v -m755 -d     /usr/share/doc/heirloom-mailx-12.5 &&
install -v -m644 README /usr/share/doc/heirloom-mailx-12.5
cd ..
rm heirloom-mailx_12.5.orig.tar.gz
rm -rf heirloom-mailx_12.5.orig