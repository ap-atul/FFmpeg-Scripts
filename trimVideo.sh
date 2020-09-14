# !/bin/bash

# Usage: 
# $1 : input file name
# $2 : start time in secs
# $3 : total duration to trim in secs
# 
# ex: trimming 10 min from input.mp4
# $ ./trimVideo input.mp4 0 600 trimedInput.mp4

ffmpeg -y -i $1 -ss $2 -t $3 $4