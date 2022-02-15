if [ -z "$old" ];
then
   exit
fi
wget https://downloads.sourceforge.net/lxde/lxmenu-data-0.1.5.tar.xz

tar -xvf lxmenu-data-0.1.5.tar.xz
cd lxmenu-data-0.1.5
./configure --prefix=/usr --sysconfdir=/etc &&
make
make install
cd ..
rm lxmenu-data-0.1.5.tar.xz
rm -rf lxmenu-data-0.1.5