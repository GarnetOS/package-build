build-scripts/prepare.sh
wget http://ftp.gnome.org/pub/gnome/sources/gnome-backgrounds/3.36/gnome-backgrounds-3.36.0.tar.xz

tar -xvf gnome-backgrounds-3.36.0.tar.xz
cd gnome-backgrounds-3.36.0
mkdir build &&
cd    build &&

meson --prefix=/usr .. &&
ninja
ninja install
cd ..
rm gnome-backgrounds-3.36.0.tar.xz
rm -rf gnome-backgrounds-3.36.0