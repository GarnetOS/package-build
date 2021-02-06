# DIR1 is the backup directory
# DIR2 is from where files will get deleted. Change the values accordingly
DIR1="chroot-old"
DIR2="chroot"

find $DIR1 -type f | xargs md5sum 2>/dev/null | sort > /tmp/m1
find $DIR2 -type f | xargs md5sum 2>/dev/null | sort > /tmp/m2

join /tmp/m1 /tmp/m2 > /tmp/m3
cat /tmp/m3 | cut -d ' ' -f3 | sudo xargs rm -f
sudo find chroot -xtype l -delete
sudo find chroot -type d -empty -delete
sudo find chroot -xtype l -delete
