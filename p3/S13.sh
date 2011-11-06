#!/bin/sh
source "`dirname $0`/../notify.sh"

desc="Macro cheat sheet"
tell "$desc"

chromium-browser $HOME/.sidewinderx6/keymap.html
