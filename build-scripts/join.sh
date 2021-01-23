# DIR1 is the main directory
# DIR2 is from where files will get deleted. Change the values accordingly
DIR1="chroot-old"
DIR2="chroot"

md5sum $DIR1/* 2>/dev/null | sort > /tmp/m1
md5sum $DIR2/* 2>/dev/null | sort > /tmp/m2

join /tmp/m1 /tmp/m2 > /tmp/m3
cat /tmp/m3 | cut -d ' ' -f3 | xargs rm 
