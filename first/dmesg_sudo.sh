#!/bin/sh

sudo sh -c "echo kernel.dmesg_restrict=0 > /etc/sysctl.d/dmesg.conf"
sudo /sbin/sysctl --system
