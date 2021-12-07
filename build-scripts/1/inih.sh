if [ -z "$old" ];
then
   exit
fi
wget https://github.com/benhoyt/inih/archive/r53/inih-r53.tar.gz

tar -xvf inih-r53.tar.gz
cd inih-r53
mkdir build &&
cd    build &&

meson --prefix=/usr --buildtype=release .. &&
ninja
ninja install
cd ..
rm inih-r53.tar.gz
rm -rf inih-r53