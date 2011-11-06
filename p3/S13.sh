#!/bin/sh

Xdialog --wrap --title "Shutdown `hostname`?"\
        --yesno "Do you want to shut down `hostname`?" 0 0

case $? in
  0)
    shutdown now;;
  1)
    echo "Will not shutdown.";;
  255)
    echo "Dialog closed, will not shutdown.";;
esac
