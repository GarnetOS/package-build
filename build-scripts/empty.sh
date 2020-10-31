#!/bin/bash
ls
sudo umount -l ./chroot/dev
sudo find . -type d -empty -delete
