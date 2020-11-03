build-scripts/prepare.sh
wget http://anduin.linuxfromscratch.org/BLFS/net-tools/net-tools-CVS_20101030.tar.gz
wget http://www.linuxfromscratch.org/patches/blfs/10.0/net-tools-CVS_20101030-remove_dups-1.patch
tar -xvf net-tools-CVS_20101030.tar.gz
cd net-tools-CVS_20101030
patch -Np1 -i ../net-tools-CVS_20101030-remove_dups-1.patch &&
sed -i '/#include <netinet\/ip.h>/d'  iptunnel.c &&
yes "" | make config &&
make
make update
cd ..
rm net-tools-CVS_20101030.tar.gz
rm -rf net-tools-CVS_20101030
