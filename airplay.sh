#!/bin/bash

rm -r /var/run/dbus
mkdir /var/run/dbus
dbus-daemon --system --fork 
service avahi-daemon start
/usr/local/bin/shairport -a "$NAME"
