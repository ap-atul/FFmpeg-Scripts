#!/bin/bash

# Usage : 
# any formats FFmpeg knows it all ;)
# input one positional argument file formats to extract
# $ ./batchExtractAudioFromVideo.sh .mp4

for i in *$1; do ffmpeg -i "$i" -codec:a libmp3lame -q:a 3 "${i%.*}.mp3"; done