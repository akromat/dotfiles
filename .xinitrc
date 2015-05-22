#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

xrdb  ~/.Xresources
xrdb -merge ~/.colors/mono

xcalib -clear
#xcalib -gc 1.1 -co 95 -red .95 2 100 -green .98 3 100 -blue 1 1 90 -alter 
xcalib -gc 1.21 -co 90.25 -red .9025 2 100 -green .9606 2.5 100 -blue 1 1 81 -alter 
hsetroot -blur 50 -full ~/.wallpapers/tree.jpg
xsetroot -cursor_name left_ptr

sxhkd &
exec bspwm
