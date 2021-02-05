# DIR1 is the main directory
# DIR2 is from where files will get deleted. Change the values accordingly
DIR1="chroot-old"
DIR2="chroot"

find $DIR1 -type f | xargs md5sum 2>/dev/null | sort > /tmp/m1
find $DIR2 -type f | xargs md5sum 2>/dev/null | sort > /tmp/m2

join /tmp/m1 /tmp/m2 > /tmp/m3
cat /tmp/m3 | cut -d ' ' -f3 | sudo xargs rm -f
find chroot -xtype l -delete
# To delete empty directories
#find $DIR2 -type d -exec sudo rm -rf {} +
