#!/bin/sh
# ./.record.sh <trackname>
DIR=`pwd`
read -p "$DIR"
BPM=`cat bpm`
read -p "$BPM"
st -e $DIR/../.click/click $BPM &
#st -e /home/ray/src/demotaper/.click/click 90 &
ffmpeg -f pulse -i default "raw/$1.wav"
