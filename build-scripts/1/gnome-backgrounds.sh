if [ -z "$old" ];
then
   exit
fi
wget https://download.gnome.org/sources/gnome-backgrounds/40/gnome-backgrounds-40.1.tar.xz

tar -xvf gnome-backgrounds-40.1.tar.xz
cd gnome-backgrounds-40.1
mkdir build &&
cd    build &&

meson --prefix=/usr .. &&
ninja
ninja install


cd ..
rm gnome-backgrounds-40.1.tar.xz
rm -rf gnome-backgrounds-40.1