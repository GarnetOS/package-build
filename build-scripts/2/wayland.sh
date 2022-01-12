libxml2
if [ -z "$old" ];
then
   exit
fi
wget https://wayland.freedesktop.org/releases/wayland-1.19.0.tar.xz

tar -xvf wayland-1.19.0.tar.xz
cd wayland-1.19.0
mkdir build &&
cd    build &&

meson --prefix=/usr       \
      --buildtype=release \
      -Ddocumentation=false &&
ninja
ninja install
cd ..
rm wayland-1.19.0.tar.xz
rm -rf wayland-1.19.0