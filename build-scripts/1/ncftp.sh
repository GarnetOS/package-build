if [ -z "$old" ];
then
   exit
fi
wget ftp://ftp.ncftp.com/ncftp/ncftp-3.2.6-src.tar.xz

tar -xvf ncftp-3.2.6-src.tar.xz
cd ncftp-3.2.6-src
sed -i 's/^Bookmark/extern Bookmark/' sh_util/gpshare.c
./configure --prefix=/usr --sysconfdir=/etc &&
make -C libncftp shared &&
make
make -C libncftp soinstall &&
make install
./configure --prefix=/usr --sysconfdir=/etc &&
make
make install

yes-i-know-about-NcFTPd=yes


cd ..
rm ncftp-3.2.6-src.tar.xz
rm -rf ncftp-3.2.6-src