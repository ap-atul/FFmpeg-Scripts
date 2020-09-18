#!/bin/bash

# Usage:
# $ combineVideos.sh video1.mp4 video2.mp4 finalVideo.mp4
ffmpeg -y -i $1 -i $2 -filter_complex "[0:v][0:a][1:v][0:a]concat=n=2:a=1:v=1[video][audio]" -map "[video]" -map "[audio]" $3