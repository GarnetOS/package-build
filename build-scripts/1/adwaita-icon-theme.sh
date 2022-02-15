if [ -z "$old" ];
then
   exit
fi
wget https://download.gnome.org/sources/adwaita-icon-theme/40/adwaita-icon-theme-40.1.1.tar.xz

tar -xvf adwaita-icon-theme-40.1.1.tar.xz
cd adwaita-icon-theme-40.1.1
./configure --prefix=/usr &&
make
make install
cd ..
rm adwaita-icon-theme-40.1.1.tar.xz
rm -rf adwaita-icon-theme-40.1.1