# !/bin/bash

# Usage: 
# $1 : input music file
# $2 : output cover image
# $ ./extractMp3Cover.sh input.mp3 output.png

ffmpeg -i $1 -an -vcodec copy $2
