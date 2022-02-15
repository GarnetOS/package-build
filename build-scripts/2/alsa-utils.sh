alsa-lib
if [ -z "$old" ];
then
   exit
fi
wget https://www.alsa-project.org/files/pub/utils/alsa-utils-1.2.5.1.tar.bz2

tar -xvf alsa-utils-1.2.5.1.tar.bz2
cd alsa-utils-1.2.5.1.
./configure --disable-alsaconf \
            --disable-bat   \
            --disable-xmlto \
            --with-curses=ncursesw &&
make
make install
alsactl -L store
usermod -a -G audio <username>
make install-alsa
cd ..
rm alsa-utils-1.2.5.1.tar.bz2
rm -rf alsa-utils-1.2.5.1.