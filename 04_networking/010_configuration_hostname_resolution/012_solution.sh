#!/bin/bash
sudo apt install resolvconf
sudo echo nameserver 8.8.8.8 > /etc/resolvconf/resolv.conf.d/head
sudo resolvconf -u