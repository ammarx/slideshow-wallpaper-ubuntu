#!/bin/bash
 
# export DBUS_SESSION_BUS_ADDRESS environment variable useful when the script is set as a cron job
PID=$(pgrep gnome-session)
export DBUS_SESSION_BUS_ADDRESS=$(grep -z DBUS_SESSION_BUS_ADDRESS /proc/$PID/environ|cut -d= -f2-)
 
# Background settings
picOpts="zoom"
 
# $saveDir is used to set the location where pictures 
# are stored.  $HOME holds the path of the current user's home directory
saveDir="$HOME/Pictures/"
 
# Get random file
picName=`/bin/ls -1 "$saveDir" | sort --random-sort | head -1`

# Set the GNOME3 wallpaper
gsettings set org.gnome.desktop.background picture-uri "file://$saveDir$picName"
 
# Set the GNOME 3 wallpaper picture options
gsettings set org.gnome.desktop.background picture-options $picOpts
 
# Testing script
#echo "file://$saveDir$picName" 
 
# Exit the script
exit
