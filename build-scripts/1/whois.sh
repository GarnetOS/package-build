if [ -z "$old" ];
then
   exit
fi
wget https://github.com/rfc1036/whois/archive/v5.4.3/whois-5.4.3.tar.gz

tar -xvf whois-5.4.3.tar.gz
cd whois-5.4.3
make
make prefix=/usr install-whois
make prefix=/usr install-mkpasswd
make prefix=/usr install-pos

cd ..
rm whois-5.4.3.tar.gz
rm -rf whois-5.4.3