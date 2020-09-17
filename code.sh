# DEFLICKERING 0.041=24 fps or 0.033 29.97 fps https://video.stackexchange.com/a/23749
ffmpeg -fflags +genpts -i input.mp4 -fflags +genpts -i input.mp4 -filter_complex "[0:v]setpts=PTS-STARTPTS[top]; [1:v]setpts=PTS-STARTPTS+.041/TB, format=yuva420p, colorchannelmixer=aa=0.5[bottom]; [top][bottom]overlay=shortest=1" -c:v libx264 -crf 5 -an output.mp4
