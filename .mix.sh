#!/bin/sh
#./.mix.sh <trackname> <trackname>
ffmpeg -i "raw/$1.wav" -i "raw/$2.wav" -filter_complex amerge=inputs=2 -ac 2 "mixes/$1+$2.wav"
