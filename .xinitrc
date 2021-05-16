#!/bin/sh

userresources=$HOME/.Xresources
sysresources=/etc/X11/xinit/.Xresources

# merge in defaults
xrdb -merge $sysresources
xrdb -merge "$userresources"

exec i3
