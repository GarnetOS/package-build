# DIR1 is the main directory
# DIR2 is from where files will get deleted.
DIR1="chroot-old"
DIR2="chroot"

# Take a file from $DIR1 and check for it in $DIR2
for i in $DIR1/*; do
    HASH=$(md5sum $i 2>/dev/null | cut -d ' ' -f1 )
    if [ "$HASH" ]; then
        for j in $DIR2/*; do
            HASH2=$(md5sum $j | cut -d ' ' -f1)
            if [ "$HASH" = "$HASH2" ]; then
                # Delete files from $DIR2
                echo "Deleting $j"
                sudo rm $j
            fi
        done
    fi
done
