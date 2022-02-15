alsa-lib
if [ -z "$old" ];
then
   exit
fi
wget https://www.alsa-project.org/files/pub/oss-lib/alsa-oss-1.1.8.tar.bz2

tar -xvf alsa-oss-1.1.8.tar.bz2
cd alsa-oss-1.1.8.
./configure --disable-static &&
make
make install
cd ..
rm alsa-oss-1.1.8.tar.bz2
rm -rf alsa-oss-1.1.8.