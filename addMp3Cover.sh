# !/bin/bash

# Usage: 
# $1 : input music file
# $2 : input cover image
# $3 : output music file
# $ ./addMp3Cover.sh input.mp3 input.png output.mp3

ffmpeg -i $1 -i $2 -map 0:0 -map 1:0 -c copy -id3v2_version 3 -metadata:s:v title="Album cover" -metadata:s:v comment="Cover (front)" $3
