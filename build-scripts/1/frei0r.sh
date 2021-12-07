if [ -z "$old" ];
then
   exit
fi
wget https://files.dyne.org/frei0r/releases/frei0r-plugins-1.7.0.tar.gz

tar -xvf frei0r-plugins-1.7.0.tar.gz
cd frei0r-plugins-1.7.0
mkdir -vp build &&
cd        build &&

cmake -DCMAKE_INSTALL_PREFIX=/usr \
      -DCMAKE_BUILD_TYPE=Release  \
      -DWITHOUT_OPENCV=TRUE       \
      -Wno-dev ..                 &&

make
make install
cd ..
rm frei0r-plugins-1.7.0.tar.gz
rm -rf frei0r-plugins-1.7.0