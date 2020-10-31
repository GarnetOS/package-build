#!/bin/bash
ls
sudo umount -l ./chroot/dev
for i in {1..10}; do echo $i; sudo find ./chroot -type d -empty -print -delete; done
