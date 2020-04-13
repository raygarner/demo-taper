#!/bin/sh
#./.mix.sh <trackname> <trackname>
ffmpeg -i "audio/$1.wav" -i "audio/$2.wav" -filter_complex amerge=inputs=2 -ac 2 "audio/$1+$2.wav"
