#!/bin/bash

# Usage : 
# any formats FFmpeg knows it all ;)
# $ ./separateAudioFromVideoWithoutReencoding.sh input.mp4 output.mp3

ffmpeg -i $1 -codec:a libmp3lame $2