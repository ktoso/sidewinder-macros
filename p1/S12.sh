#!/bin/sh
source "`dirname $0`/../notify.sh"

desc="Lock screen"
tell 'Lock initialized...'

xdotool key ctrl+alt+shift+l
