if [ -z "$old" ];
then
   exit
fi
wget https://github.com/seccomp/libseccomp/releases/download/v2.5.1/libseccomp-2.5.1.tar.gz

tar -xvf libseccomp-2.5.1.tar.gz
cd libseccomp-2.5.1
./configure --prefix=/usr --disable-static &&
make
make install
cd ..
rm libseccomp-2.5.1.tar.gz
rm -rf libseccomp-2.5.1