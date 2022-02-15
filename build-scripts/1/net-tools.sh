if [ -z "$old" ];
then
   exit
fi
wget https://downloads.sourceforge.net/project/net-tools/net-tools-2.10.tar.xz

tar -xvf net-tools-2.10.tar.xz
cd net-tools-2.10
export BINDIR='/usr/bin' SBINDIR='/usr/bin' &&
yes "" | make -j1                           &&
make DESTDIR=$PWD/install -j1 install       &&
rm    install/usr/bin/{nis,yp}domainname    &&
rm    install/usr/bin/{hostname,dnsdomainname,domainname,ifconfig} &&
rm -r install/usr/share/man/man1            &&
rm    install/usr/share/man/man8/ifconfig.8 &&
unset BINDIR SBINDIR
chown -R root:root install &&
cp -a install/* /
cd ..
rm net-tools-2.10.tar.xz
rm -rf net-tools-2.10