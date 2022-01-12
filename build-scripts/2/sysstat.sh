fcron
if [ -z "$old" ];
then
   exit
fi
wget http://sebastien.godard.pagesperso-orange.fr/sysstat-12.5.4.tar.xz

tar -xvf sysstat-12.5.4.tar.xz
cd sysstat-12.5.4
sa_lib_dir=/usr/lib/sa    \
sa_dir=/var/log/sa        \
conf_dir=/etc/sysconfig   \
./configure --prefix=/usr \
            --disable-file-attr &&
make
make install
cd ..
rm sysstat-12.5.4.tar.xz
rm -rf sysstat-12.5.4