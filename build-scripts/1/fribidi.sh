if [ -z "$old" ];
then
   exit
fi
wget https://github.com/fribidi/fribidi/releases/download/v1.0.9/fribidi-1.0.9.tar.xz

tar -xvf fribidi-1.0.9.tar.xz
cd fribidi-1.0.9
mkdir build &&
cd    build &&

meson --prefix=/usr --buildtype=release .. &&
ninja
ninja install
cd ..
rm fribidi-1.0.9.tar.xz
rm -rf fribidi-1.0.9