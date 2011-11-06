#!/bin/sh
source "`dirname $0`/../notify.sh"

desc='Launching console...'
tell "$desc"

konsole
