#!/bin/sh
source "`dirname $0`/../notify.sh"

desc="left tab, compile latex"
tell "$desc"

xdotool key alt+Left
xdotool key alt+6
xdotool key alt+Right
