#!/bin/bash
ls
sudo umount -l ./chroot/dev
sudo find ./chroot -type d -empty -delete
