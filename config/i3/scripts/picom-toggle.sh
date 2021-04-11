#!/bin/bash
if pgrep -x "picom" > /dev/null
then
	killall picom
else
	picom --daemon --config ~/.config/i3/picom.conf --experimental-backends
fi
