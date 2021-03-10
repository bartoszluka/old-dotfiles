#!/bin/sh
 
YAD_WIDTH=222  # 222 is minimum possible value
YAD_HEIGHT=193 # 193 is minimum possible value
# DATE="$(date +"%a %d %H:%M")"
DATE="$(date +"%H:%M")"
# DATE="$(date)"
 
case "$1" in
--popup)
 
    killall yad --quiet || \
    # yad --calendar --undecorated --fixed --no-buttons --posx=1485 --posy=35\
        # --title="calendar" --borders=0 >/dev/null &
    yad --calendar --undecorated --fixed --no-buttons --mouse --posy=35\
        --title="calendar" --borders=0 >/dev/null &
    ;;
*)
    echo $DATE
    ;;
esac
