if [ -z "$old" ];
then
   exit
fi
wget https://www.kernel.org/pub/linux/utils/net/bridge-utils/bridge-utils-1.7.1.tar.xz

tar -xvf bridge-utils-1.7.1.tar.xz
cd bridge-utils-1.7.1
[*] Networking support --->            [CONFIG_NET]
      Networking options --->
        <*/M> 802.1d Ethernet Bridging [CONFIG_BRIDGE]
autoconf                  &&
./configure --prefix=/usr &&
make
make install
make install-service-bridge
cat > /etc/sysconfig/ifconfig.br0 << "EOF"
ONBOOT=yes
IFACE=br0
VIRTINT=yes
SERVICE="bridge ipv4-static"  # Space separated
IP=192.168.1.32
GATEWAY=192.168.1.1
PREFIX=24
BROADCAST=192.168.1.255
CHECK_LINK=no                 # Don't check before bridge is created
STP=no                        # Spanning tree protocol, default no
INTERFACE_COMPONENTS="eth0"   # Add to IFACE, space separated devices
IP_FORWARD=true
EOF

cd ..
rm bridge-utils-1.7.1.tar.xz
rm -rf bridge-utils-1.7.1