#!/bin/bash

# This process works in two phases
# 1. It find transforms and store it in a file
# 2. Then stabilizes the video using the input file
# Usage :
#   ./stabilizeVideo.sh input.mp4 output.mp4

# NOTE: The video should not contain different scenes
# i.e. no cut scenes, if there are then ffmpeg will try to 
# stabilize the cut scenes which will look this big transitions
# in the output video
# This script will override the video if any
# Adjust the vars as per you choice

# this will generate the tranform.trf file
ffmpeg -y -i $1 -vf vidstabdetect=shakiness=10:accuracy=15 -f null -

# this will generate our output video
ffmpeg -y -i $1 -vf vidstabtransform=smoothing=30:input="transforms.trf" -preset fast $2

