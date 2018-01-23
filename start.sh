#!/bin/bash

service dbus restart
avahi-daemon -D --no-chroot


cp -n /tmp/sample-config.json /config/config.json
homebridge -U /config