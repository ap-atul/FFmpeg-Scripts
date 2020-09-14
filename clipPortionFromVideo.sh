#!/bin/bash

# Usage:
# You can add multiple trim section, make sure to split and concat too
# 
# ex: clipping video from 0s -> 10s and 10m -> 10m 10s
# $ ./clipPortionFromVideo.sh input.mp4 0 10 600 10 output.mp4
ffmpeg -y -i $1 -filter_complex "[0:v]split=2 [vc1][vc2];
[vc1]trim=start=$2:duration=$3,setpts=PTS-STARTPTS[v1];
[vc2]trim=start=$4:duration=$5,setpts=PTS-STARTPTS[v2];
[0:a]asplit=2 [ac1][ac2];
[ac1]atrim=start=$2:duration=$3,asetpts=PTS-STARTPTS[a1];
[ac2]atrim=start=$4:duration=$5,asetpts=PTS-STARTPTS[a2];
[v1][a1][v2][a2]concat=n=2:v=1:a=1[video][audio]" -map "[video]" -map "[audio]" $6