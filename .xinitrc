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

# exec gnome-session
# exec startkde
# exec startxfce4
# ...or the Window Manager of your choice
udiskie &
xrdb -merge ~/.Xresources         # update x resources db

xscreensaver -no-splash &         # starts screensaver daemon 
xsetroot -cursor_name left_ptr &  # sets the cursor icon

#exec awesome
exec i3
