#!/bin/bash

# Usage:
# You might need to change the screen size to yours
# 
# $ ./screenRecorderMic.sh screencast.mp4

ffmpeg -video_size 1366x768 -framerate 30 -f x11grab -i :0.0+0,0 -f alsa -ac 2 -i pulse -acodec aac -vcodec libx264rgb -strict experimental $1