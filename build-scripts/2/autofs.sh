libtirpc rpcsvc-proto
if [ -z "$old" ];
then
   exit
fi
wget https://www.kernel.org/pub/linux/daemons/autofs/v5/autofs-5.1.7.tar.xz

tar -xvf autofs-5.1.7.tar.xz
cd autofs-5.1.7
sed -e '87d'        \
    -e '2618,2644d' \
    -i daemon/automount.c &&

sed -i '1178,1180d' daemon/state.c &&
sed -i '275,+2 d'   lib/alarm.c
sed -e '87d'        \
    -e '2618,2644d' \
    -i daemon/automount.c &&

sed -i '1178,1180d' daemon/state.c &&
sed -i '275,+2 d'   lib/alarm.c
make install
make install_samples
cd ..
rm autofs-5.1.7.tar.xz
rm -rf autofs-5.1.7