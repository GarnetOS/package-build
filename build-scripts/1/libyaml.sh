if [ -z "$old" ];
then
   exit
fi
wget https://github.com/yaml/libyaml/archive/0.2.5/libyaml-0.2.5.tar.gz

tar -xvf libyaml-0.2.5.tar.gz
cd libyaml-0.2.5
./bootstrap                                &&
./configure --prefix=/usr --disable-static &&
make
make install
cd ..
rm libyaml-0.2.5.tar.gz
rm -rf libyaml-0.2.5