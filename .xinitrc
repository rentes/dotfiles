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
export PATH=$PATH:~/.panel:~/.scripts

# udiskie is an automounter for removable media
#udiskie --tray &
# update x resources db
[[ -f $HOME/.Xresources ]] && xrdb -merge $HOME/.Xresources

xset +fp $HOME/.fonts
xset +fp /usr/share/fonts/
xset fp rehash
xsetroot -cursor_name left_ptr &  # sets the cursor icon
xscreensaver -no-splash &         # starts screensaver daemon
# Set wallpaper
nitrogen --restore
panel &
#exec awesome
#exec i3
sxhkd -m 1 &
exec bspwm
