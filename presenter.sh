#! /bin/sh

if [ "$1" = "off" ]; then
	xmodmap -e 'keycode 9  = Escape'
	xmodmap -e 'keycode 71 = F5'
	xmodmap -e 'keycode 56 = b'
else
	xmodmap -e 'keycode 9  = F11'
	xmodmap -e 'keycode 71 = F11'
	xmodmap -e 'keycode 56 = Escape'
fi
