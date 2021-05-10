# This one should be executed in steps

# generate a palette
ffmpeg -i vid.mp4 -filter_complex "[0:v] palettegen" palette.png

# generate gif using palette
ffmpeg -i vid.mp4 -i palette.png -filter_complex "[0:v][1:v] paletteuse" out.gif
ffmpeg -i vid.mp4 -filter_complex "[0:v] fps=12,scale=480:-1,split [a][b];[a] palettegen [p];[b][p] paletteuse" out.gif
