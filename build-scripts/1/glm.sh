if [ -z "$old" ];
then
   exit
fi
wget https://github.com/g-truc/glm/archive/0.9.9.8/glm-0.9.9.8.tar.gz

tar -xvf glm-0.9.9.8.tar.gz
cd glm-0.9.9.8
cp -r glm /usr/include/ &&
cp -r doc /usr/share/doc/glm-0.9.9.8
cd ..
rm glm-0.9.9.8.tar.gz
rm -rf glm-0.9.9.8