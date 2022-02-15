alsa-lib
if [ -z "$old" ];
then
   exit
fi
wget https://www.alsa-project.org/files/pub/plugins/alsa-plugins-1.2.5.tar.bz2

tar -xvf alsa-plugins-1.2.5.tar.bz2
cd alsa-plugins-1.2.5.
./configure --sysconfdir=/etc &&
make
make install
cd ..
rm alsa-plugins-1.2.5.tar.bz2
rm -rf alsa-plugins-1.2.5.