if [ -z "$old" ];
then
   exit
fi
wget https://github.com/knik0/faac/archive/1_30/faac-1_30.tar.gz

tar -xvf faac-1_30.tar.gz
cd faac-1_30
./bootstrap                                &&
./configure --prefix=/usr --disable-static &&
make
./frontend/faac -o Front_Left.mp4 /usr/share/sounds/alsa/Front_Left.wav
faad Front_Left.mp4
aplay Front_Left.wav
make install

cd ..
rm faac-1_30.tar.gz
rm -rf faac-1_30