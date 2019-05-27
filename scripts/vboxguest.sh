#!/usr/bin/env bash

mkdir /tmp/virtualbox
# VERSION=$(cat /home/vagrant/.vbox_version)
# mount -o loop /home/vagrant/VBoxGuestAdditions_$VERSION.iso /tmp/virtualbox
mount -o loop /tmp/VBoxGuestAdditions.iso /tmp/virtualbox
sh /tmp/virtualbox/VBoxLinuxAdditions.run
umount /tmp/virtualbox
rmdir /tmp/virtualbox
rm -f /tmp/*.iso
