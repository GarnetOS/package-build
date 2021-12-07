if [ -z "$old" ];
then
   exit
fi
wget https://www.sudo.ws/dist/sudo-1.9.7p2.tar.gz

tar -xvf sudo-1.9.7p2.tar.gz
cd sudo-1.9.7p2
./configure --prefix=/usr              \
            --libexecdir=/usr/lib      \
            --with-secure-path         \
            --with-all-insults         \
            --with-env-editor          \
            --docdir=/usr/share/doc/sudo-1.9.7p2 \
            --with-passprompt="[sudo] password for %p: " &&
make
make install &&
ln -sfv libsudo_util.so.0.0.0 /usr/lib/sudo/libsudo_util.so.0
cd ..
rm sudo-1.9.7p2.tar.gz
rm -rf sudo-1.9.7p2