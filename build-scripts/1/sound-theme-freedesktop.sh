build-scripts/prepare.sh
wget https://people.freedesktop.org/~mccann/dist/sound-theme-freedesktop-0.8.tar.bz2

tar -xvf sound-theme-freedesktop-0.8.tar.bz2
cd sound-theme-freedesktop-0.8
./configure --prefix=/usr &&
make
make install
cd ..
rm sound-theme-freedesktop-0.8.tar.bz2
rm -rf sound-theme-freedesktop-0.8