#!/bin/sh
ffmpeg -f pulse -i default "raw/$1.wav"
