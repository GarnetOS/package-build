if [ -z "$old" ];
then
   exit
fi
wget https://ftp.gnu.org/gnu/libidn/libidn-1.38.tar.gz

tar -xvf libidn-1.38.tar.gz
cd libidn-1.38
./configure --prefix=/usr --disable-static &&
make
pushd tests  &&
  make check &&
popd 
make install &&

find doc -name "Makefile*" -delete            &&
rm -rf -v doc/{gdoc,idn.1,stamp-vti,man,texi} &&
mkdir -v       /usr/share/doc/libidn-1.38     &&
cp -r -v doc/* /usr/share/doc/libidn-1.38
cd ..
rm libidn-1.38.tar.gz
rm -rf libidn-1.38