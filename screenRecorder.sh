#!/bin/bash

# Usage:
# You might need to change the screen size to yours
# 
# $ ./screenRecorder.sh screencast.mp4

ffmpeg -video_size 1366x768 -framerate 30 -f x11grab -i :0.0+0,0 -c:v libx264rgb -crf 0 -preset ultrafast $1