if [ -z "$old" ];
then
   exit
fi
wget https://github.com/mltframework/mlt/releases/download/v7.0.1/mlt-7.0.1.tar.gz

tar -xvf mlt-7.0.1.tar.gz
cd mlt-7.0.1
mkdir build &&
cd    build &&

cmake -DCMAKE_INSTALL_PREFIX=/usr \
      -DCMAKE_BUILD_TYPE=Release  \
      -Wno-dev .. &&

make
make install
cd ..
rm mlt-7.0.1.tar.gz
rm -rf mlt-7.0.1