#!/usr/bin/bash

if [ "$#" -ne 1 ]; then 
  echo "Usage: $0 path/to/wallpaper"
  exit 1
fi

FPS=60
TYPE="any"
DURATION=2
BEZIER=".43,1.19,1,.4"
SWWW_PARAMS="--transition-fps $FPS --transition-type $TYPE --transition-duration $DURATION --transition-bezier $BEZIER"

swww img $1 $SWWW_PARAMS
wallust run $1
swaync-client -rs
