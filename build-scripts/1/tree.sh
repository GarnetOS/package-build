build-scripts/prepare.sh
wget http://mama.indstate.edu/users/ice/tree/src/tree-1.8.0.tgz

tar -xvf tree-1.8.0.tgz
cd tree-1.8.0
make
make MANDIR=/usr/share/man/man1 install &&
chmod -v 644 /usr/share/man/man1/tree.1
cd ..
rm tree-1.8.0.tgz
rm -rf tree-1.8.0