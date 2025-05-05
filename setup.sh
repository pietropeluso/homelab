#!/bin/bash

# setup fstab to mount hard drive
sudo echo '/dev/sdb /home/pietro/storage ext4 defaults,user,rw 0 2' >> /etc/fstab
sudo systemctl daemon-reload
sudo mount -a
sudo chown -R $USER:$USER /home/pietro/storage/media
sudo chown -R $USER:$USER /home/pietro/storage/syncthing
sudo chown -R $USER:$USER /home/pietro/storage/nextcloud

# setup github global preferences
git config --global user.email "you@example.com"
git config --global user.name "Your Name"