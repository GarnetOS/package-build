if [ -z "$old" ];
then
   exit
fi
wget https://icon-theme.freedesktop.org/releases/hicolor-icon-theme-0.17.tar.xz

tar -xvf hicolor-icon-theme-0.17.tar.xz
cd hicolor-icon-theme-0.17
./configure --prefix=/usr
make install
cd ..
rm hicolor-icon-theme-0.17.tar.xz
rm -rf hicolor-icon-theme-0.17