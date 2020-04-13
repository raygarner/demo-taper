#!/bin/sh
# ./.record.sh <trackname> <caller project>
ffmpeg -f pulse -i default "$2/raw/$1.wav"
