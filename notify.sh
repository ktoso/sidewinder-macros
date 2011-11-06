#!/bin/sh

# @param 1 desc, the description to be displayed
function notify {
  profile=`basename $(pwd)`
  macro=`basename $0 .sh`
  desc="$1"
  notify-send "Sidewinder - $profile :: $macro" \
              "$desc" \
              --expire-time=500 \
              --icon=/home/ktoso/.sidewinderx6/sidewinder.jpg
}

# @param 1 desc, the description to be displayed and said out loud
function tell {
  notify "$1" && speak "$1"
}

# @param 1 sentence to be said out loud using system speakers
function speak {
  echo "$1" | espeak &
}
