if [ -z "$old" ];
then
   exit
fi
wget https://downloads.sourceforge.net/lxde/lxde-icon-theme-0.5.1.tar.xz

tar -xvf lxde-icon-theme-0.5.1.tar.xz
cd lxde-icon-theme-0.5.1
./configure --prefix=/usr

make install

gtk-update-icon-cache -qf /usr/share/icons/nuoveXT2


cd ..
rm lxde-icon-theme-0.5.1.tar.xz
rm -rf lxde-icon-theme-0.5.1