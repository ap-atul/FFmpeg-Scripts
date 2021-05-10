# This one should be executed in steps
# check the scale before use

# extract frames from vid
ffmpeg -i vid.mp4 %d.png

# create a pallete of all images (all file should be named as 1.png 2.png 3.png)
ffmpeg -f image2 -i %d.png -vf scale=512:-1:sws_dither=ed,palettegen palette.png

# creating a video out of all the images
ffmpeg -f image2 -framerate 1.2 -i %d.png video.flv

# using the pallete to create looping video gif
# change the scale and fps to control the look
ffmpeg -i video.flv -i palette.png -filter_complex "fps=1.2,scale=512:-1:flags=lanczos[x];[x][1:v]paletteuse" gifCreated.gif
