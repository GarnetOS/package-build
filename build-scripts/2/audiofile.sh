alsa-lib
FLAC
if [ -z "$old" ];
then
   exit
fi
wget https://download.gnome.org/sources/audiofile/0.3/audiofile-0.3.6.tar.xz

tar -xvf audiofile-0.3.6.tar.xz
cd audiofile-0.3.6
CXXFLAGS="${CXXFLAGS:--O2 -g} -std=c++98" \
./configure --prefix=/usr --disable-static &&

make
make install
cd ..
rm audiofile-0.3.6.tar.xz
rm -rf audiofile-0.3.6