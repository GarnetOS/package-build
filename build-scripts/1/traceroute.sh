if [ -z "$old" ];
then
   exit
fi
wget https://downloads.sourceforge.net/traceroute/traceroute-2.1.0.tar.gz

tar -xvf traceroute-2.1.0.tar.gz
cd traceroute-2.1.0
make
make prefix=/usr install                                 &&
ln -sv -f traceroute /usr/bin/traceroute6                &&
ln -sv -f traceroute.8 /usr/share/man/man8/traceroute6.8 &&
rm -fv /usr/share/man/man1/traceroute.1
cd ..
rm traceroute-2.1.0.tar.gz
rm -rf traceroute-2.1.0