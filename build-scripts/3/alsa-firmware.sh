alsa-tools
if [ -z "$old" ];
then
   exit
fi
wget https://www.alsa-project.org/files/pub/firmware/alsa-firmware-1.2.4.tar.bz2

tar -xvf alsa-firmware-1.2.4.tar.bz2
cd alsa-firmware-1.2.4.
./configure --prefix=/usr &&
make
make install
cd ..
rm alsa-firmware-1.2.4.tar.bz2
rm -rf alsa-firmware-1.2.4.