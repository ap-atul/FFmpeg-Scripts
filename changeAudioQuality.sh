# !/bin/bash

# Usage: 
# $1 : input file name
# $2 : input quality (0 - 9) 9 being the worst default is 4
# $3 : output file name
# $ ./changeAudioQuality audio.mp3 3 hqaudio.mp3

ffmpeg -y -i $1 -codec:a libmp3lame -qscale:a $2 $3