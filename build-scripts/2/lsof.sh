libtirpc
if [ -z "$old" ];
then
   exit
fi
wget https://www.mirrorservice.org/sites/lsof.itap.purdue.edu/pub/tools/unix/lsof/lsof_4.91.tar.gz

tar -xvf lsof_4.91.tar.gz
cd lsof_4.91
tar -xf lsof_4.91_src.tar  &&
cd lsof_4.91_src           &&
./Configure -n linux       &&
make CFGL="-L./lib -ltirpc"
install -v -m0755 -o root -g root lsof /usr/bin &&
install -v lsof.8 /usr/share/man/man8
cd ..
rm lsof_4.91.tar.gz
rm -rf lsof_4.91