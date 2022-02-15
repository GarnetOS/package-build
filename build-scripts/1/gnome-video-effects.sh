if [ -z "$old" ];
then
   exit
fi
wget https://download.gnome.org/sources/gnome-video-effects/0.5/gnome-video-effects-0.5.0.tar.xz

tar -xvf gnome-video-effects-0.5.0.tar.xz
cd gnome-video-effects-0.5.0
mkdir build &&
cd    build &&

meson --prefix=/usr --buildtype=release .. &&
ninja
ninja install
cd ..
rm gnome-video-effects-0.5.0.tar.xz
rm -rf gnome-video-effects-0.5.0