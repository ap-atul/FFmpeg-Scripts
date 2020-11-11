# !/bin/bash

# Usage: 
# $1 : input file name
# $2 : output metadata file name
# 
# ex: extracting metadata from input.mp4 with file name input_meta.txt
# $ ./extractMeta.sh input.mp4 input_meta.txt

ffmpeg -y -i $1 -f ffmetadata $2