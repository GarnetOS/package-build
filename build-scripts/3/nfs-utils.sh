libtirpc rpcsvc-proto
if [ -z "$old" ];
then
   exit
fi
wget https://www.kernel.org/pub/linux/utils/nfs-utils/2.5.4/nfs-utils-2.5.4.tar.xz

tar -xvf nfs-utils-2.5.4.tar.xz
cd nfs-utils-2.5.4
File systems  --->
  [*] Network File Systems  --->         [CONFIG_NETWORK_FILESYSTEMS]
    <*/M> NFS client support             [CONFIG_NFS_FS]
    <*/M> NFS server support             [CONFIG_NFSD]
groupadd -g 99 nogroup &&
useradd -c "Unprivileged Nobody" -d /dev/null -g nogroup \
    -s /bin/false -u 99 nobody
./configure --prefix=/usr          \
            --sysconfdir=/etc      \
            --sbindir=/usr/sbin    \
            --disable-nfsv4        \
            --disable-gss &&
make
make install                      &&
chmod u+w,go+r /usr/sbin/mount.nfs    &&
chown nobody.nogroup /var/lib/nfs
cat >> /etc/exports << EOF
/home 192.168.0.0/24(rw,subtree_check,anonuid=99,anongid=99)
EOF
make install-nfs-server
cat > /etc/sysconfig/nfs-server << "EOF"
PORT="2049"
PROCESSES="8"
KILLDELAY="10"
EOF
<server-name>:/home  /home nfs   rw,_netdev 0 0
<server-name>:/usr   /usr  nfs   ro,_netdev 0 0
make install-nfs-client
cd ..
rm nfs-utils-2.5.4.tar.xz
rm -rf nfs-utils-2.5.4