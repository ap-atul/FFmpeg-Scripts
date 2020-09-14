#!/bin/bash

# Usage:
# You might need to change the screen size to yours
# 
# ex: screenshot of whole screen
# $ ./screenShot.sh screen.png

ffmpeg -f x11grab -framerate 1 -video_size 1366x768 -i :0.0 -vframes 1 $1