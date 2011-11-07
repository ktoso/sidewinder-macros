#!/bin/sh
source "`dirname $0`/../notify.sh"
source "`dirname $0`/../common.sh"

desc='Launching console...'
tell "$desc"

konsole
focus_attention
