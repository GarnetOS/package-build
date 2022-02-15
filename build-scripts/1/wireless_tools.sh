if [ -z "$old" ];
then
   exit
fi
wget https://hewlettpackard.github.io/wireless-tools/wireless_tools.29.tar.gz

tar -xvf wireless_tools.29.tar.gz
cd wireless_tools.29
patch -Np1 -i ../wireless_tools-29-fix_iwlist_scanning-1.patch
make
make PREFIX=/usr INSTALL_MAN=/usr/share/man install

cd ..
rm wireless_tools.29.tar.gz
rm -rf wireless_tools.29