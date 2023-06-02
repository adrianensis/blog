#! /bin/bash

for f in *.mp4
do
    echo ">>>>>>>>>>>>>>>>>>>>> Converting $f"
    ffmpeg -y -hide_banner -loglevel error -ss 00:00:05 -to 00:00:25 -i "$f" -filter_complex "fps=15,scale=900:-1:flags=lanczos,split[s0][s1];[s0]palettegen=max_colors=64[p];[s1][p]paletteuse=dither=bayer:bayer_scale=5:diff_mode=rectangle" "$f.gif" &
    #ffmpeg -y -hide_banner -loglevel error -ss 00:00:05 -to 00:00:25 -i "$f" -filter_complex "fps=15,scale=900:-1:flags=lanczos,split[s0][s1];[s0]palettegen=max_colors=64[p];[s1][p]paletteuse=dither=bayer" "$f.gif" &
done

wait