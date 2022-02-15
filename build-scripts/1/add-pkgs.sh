if [ -z "$old" ];
then
   exit
fi
wget https://download.kde.org/stable/release-service/21.08.0/src

tar -xvf src
cd 
cmake -Wno-dev -L .
mkdir build &&
cd    build &&

cmake -DCMAKE_INSTALL_PREFIX=$KF5_PREFIX \
      -DCMAKE_BUILD_TYPE=Release         \
      -DBUILD_TESTING=OFF                \
      -Wno-dev .. &&
make
make install
cd ..
rm src
rm -rf 