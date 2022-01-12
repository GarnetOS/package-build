Apr-Util SCons
if [ -z "$old" ];
then
   exit
fi
wget https://archive.apache.org/dist/serf/serf-1.3.9.tar.bz2

tar -xvf serf-1.3.9.tar.bz2
cd serf-1.3.9.
sed -i "/Append/s:RPATH=libdir,::"          SConstruct &&
sed -i "/Default/s:lib_static,::"           SConstruct &&
sed -i "/Alias/s:install_static,::"         SConstruct &&
sed -i "/  print/{s/print/print(/; s/$/)/}" SConstruct &&
sed -i "/get_contents()/s/,/.decode()&/"    SConstruct &&

scons PREFIX=/usr
scons PREFIX=/usr install
cd ..
rm serf-1.3.9.tar.bz2
rm -rf serf-1.3.9.