#!/bin/sh

# @param 1 desc, the description to be displayed
# @param 2 expire-time, passed through to notify-send
function notify {
  profile=`basename $(pwd)`
  macro=`basename $0 .sh`
  desc="$1"

  time=150
  if [ $# -eq 2 ]; then
    time=$2
  fi

  notify-send "Sidewinder - $profile :: $macro" \
              "$desc" \
              --expire-time=$time \
              --icon=/home/ktoso/.sidewinderx6/sidewinder.jpg
}

# @param 1 desc, the description to be displayed and said out loud
# @param 2 expire-time, passed through to notify-send
function tell {
  notify "$1" $2 && speak "$1"
}

# @param 1 sentence to be said out loud using system speakers
function speak {
  echo "$1" | espeak &
}
