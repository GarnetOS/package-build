if [ -z "$old" ];
then
   exit
fi
wget https://www.kernel.org/pub/linux/utils/raid/mdadm/mdadm-4.1.tar.xz

tar -xvf mdadm-4.1.tar.xz
cd mdadm-4.1
sed 's@-Werror@@' -i Makefile
make
./test --keep-going --logdir=test-logs --save-logs
make BINDIR=/usr/sbin install
cd ..
rm mdadm-4.1.tar.xz
rm -rf mdadm-4.1