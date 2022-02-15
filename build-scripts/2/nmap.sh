libpcap
Lua
PCRE
liblinear
if [ -z "$old" ];
then
   exit
fi
wget https://nmap.org/dist/nmap-7.92.tar.bz2

tar -xvf nmap-7.92.tar.bz2
cd nmap-7.92.
./configure --prefix=/usr &&
make
sed -i 's/lib./lib/' zenmap/test/run_tests.py
make install

cd ..
rm nmap-7.92.tar.bz2
rm -rf nmap-7.92.