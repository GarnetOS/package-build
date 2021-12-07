if [ -z "$old" ];
then
   exit
fi
wget https://www.cairographics.org/releases/pixman-0.40.0.tar.gz

tar -xvf pixman-0.40.0.tar.gz
cd pixman-0.40.0
mkdir build &&
cd    build &&

meson --prefix=/usr --buildtype=release &&
ninja
ninja install


cd ..
rm pixman-0.40.0.tar.gz
rm -rf pixman-0.40.0