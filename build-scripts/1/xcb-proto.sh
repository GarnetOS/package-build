if [ -z "$old" ];
then
   exit
fi
wget https://xorg.freedesktop.org/archive/individual/proto/xcb-proto-1.14.1.tar.xz

tar -xvf xcb-proto-1.14.1.tar.xz
cd xcb-proto-1.14.1
PYTHON=python3 ./configure $XORG_CONFIG
make install
cd ..
rm xcb-proto-1.14.1.tar.xz
rm -rf xcb-proto-1.14.1