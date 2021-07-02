# This one should be executed in steps

# generate a palette
ffmpeg -f image2 -framerate 2 -i %d.png -vf palettegen palette.png

# generate gif using palette (modify the scale options and framerate)
ffmpeg -f image2 -framerate 2 -i %d.png -i palette.png -filter_complex "[0]scale=480:-1[j];[j][1] paletteuse" out.gif
