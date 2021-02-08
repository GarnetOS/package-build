build-scripts/prepare.sh
wget http://ftp.gnome.org/pub/gnome/sources/gnome-video-effects/0.5/gnome-video-effects-0.5.0.tar.xz

tar -xvf gnome-video-effects-0.5.0.tar.xz
cd gnome-video-effects-0.5.0
mkdir build &&
cd    build &&

meson --prefix=/usr .. &&
ninja
ninja install
cd ..
rm gnome-video-effects-0.5.0.tar.xz
rm -rf gnome-video-effects-0.5.0