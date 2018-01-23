#!/bin/bash


apt-get update

apt-get install  --no-install-recommends --no-install-suggests -y \
        libavahi-compat-libdnssd-dev \
        avahi-daemon \
        avahi-discover \
        libnss-mdns 

apt-get install -qy git make gcc g++

curl -sL https://deb.nodesource.com/setup_9.x | bash -
apt-get install nodejs
        
npm install -g --unsafe-perm \
       homebridge \
       homebridge-server 

chmod a+x /root/start.sh 

mkdir -p /var/run/dbus 
rm -rf /var/lib/apt/lists/* /tmp/*
       
       
