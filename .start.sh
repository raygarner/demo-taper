#!/bin/sh
NAME=`cat name`

while [ 1 ]; do
    read -p '> ' COMMAND ARG1 ARG2

    case "$COMMAND" in
        "record")
            ../.record.sh "$ARG1"
            ;;

        "mix")
            ../.mix.sh "$ARG1" "$ARG2"
            ;;

        "quit")
            exit
            ;;

        "bpm")
            echo "$ARG1" > bpm
            ;;

        "overdub")
            ../.overdub.sh "$ARG1" "$ARG2"
            ;;

        "list")
            ../.list.sh
            ;;

        "remove")
            ../.remove.sh
            ;;

        "playback")
            ../.playback.sh "$ARG1"
            ;;

        "?")
            ../.help.sh
            ;;

        *)
            ../.help.sh
            ;;
    esac

done
