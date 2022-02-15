Talloc
if [ -z "$old" ];
then
   exit
fi
wget https://www.samba.org/ftp/linux-cifs/cifs-utils/cifs-utils-6.13.tar.bz2

tar -xvf cifs-utils-6.13.tar.bz2
cd cifs-utils-6.13.
File systems  --->
  [*] Network File Systems  --->                              [CONFIG_NETWORK_FILESYSTEMS]
    <*/M> SMB3 and CIFS support (advanced network filesystem) [CONFIG_CIFS]
./configure --prefix=/usr \
            --disable-pam \
            --disable-systemd &&
make
make install
cd ..
rm cifs-utils-6.13.tar.bz2
rm -rf cifs-utils-6.13.