#!/bin/sh
#./.mix.sh <trackname> <trackname> <caller folder>
ffmpeg -i "$1.wav" -i "$2.wav" -filter_complex amerge=inputs=2 -ac 2 "$3/mixes/$1+$2.wav"
