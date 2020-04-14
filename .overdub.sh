#!/bin/sh
# ./.overdub.sh <trackname> <backingtrack>
PLAYER="mpv"
DIR=`pwd`
read -p "$DIR"
BPM=`cat bpm`
read -p "$BPM"
#st -e $DIR/../.click/click $BPM &
#st -e mpv $DIR/audio/$2.wav &
#st -e /home/ray/src/demotaper/.click/click 90 &
st -e ffmpeg -f pulse -i default "audio/$1.wav" &
st -e aplay -q -t wav $DIR/audio/$2.wav &
