#!/bin/sh
# ./.record.sh <trackname>
ffmpeg -f pulse -i default "raw/$1.wav"
