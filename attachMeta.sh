# !/bin/bash

# Usage: 
# $1 : input file name
# $2 : input metadata file name
# $3 : output video file name
# 
# ex: attaching metadata file name 
# $ ./attachMeta.sh input.mp4 input_meta.txt output.mp4

ffmpeg -y -i $1 -i $2 -map_metadata -codec copy $3