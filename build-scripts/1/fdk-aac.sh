if [ -z "$old" ];
then
   exit
fi
wget https://downloads.sourceforge.net/opencore-amr/fdk-aac-2.0.2.tar.gz

tar -xvf fdk-aac-2.0.2.tar.gz
cd fdk-aac-2.0.2
./configure --prefix=/usr --disable-static &&
make
make install
cd ..
rm fdk-aac-2.0.2.tar.gz
rm -rf fdk-aac-2.0.2
