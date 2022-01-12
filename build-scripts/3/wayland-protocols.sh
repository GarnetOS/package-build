Wayland
if [ -z "$old" ];
then
   exit
fi
wget https://wayland.freedesktop.org/releases/wayland-protocols-1.21.tar.xz

tar -xvf wayland-protocols-1.21.tar.xz
cd wayland-protocols-1.21
mkdir build && 
cd    build &&

meson --prefix=/usr --buildtype=release &&
ninja
ninja install
cd ..
rm wayland-protocols-1.21.tar.xz
rm -rf wayland-protocols-1.21