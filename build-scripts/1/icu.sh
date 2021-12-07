if [ -z "$old" ];
then
   exit
fi
wget https://github.com/unicode-org/icu/releases/download/release-69-1/icu4c-69_1-src.tgz

tar -xvf icu4c-69_1-src.tgz
cd icu4c-69_1-src
cd source                                    &&

./configure --prefix=/usr                    &&
make


make install
cd ..
rm icu4c-69_1-src.tgz
rm -rf icu4c-69_1-src