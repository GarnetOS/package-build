build-scripts/prepare.sh
wget https://user-dirs.freedesktop.org/releases/xdg-user-dirs-0.17.tar.gz

tar -xvf xdg-user-dirs-0.17.tar.gz
cd xdg-user-dirs-0.17
./configure --prefix=/usr --sysconfdir=/etc &&
make
make install
cd ..
rm xdg-user-dirs-0.17.tar.gz
rm -rf xdg-user-dirs-0.17