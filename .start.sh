#!/bin/sh
NAME=`cat name`

while [ 1 ]; do
    read -p '> ' COMMAND ARG1 ARG2

    case COMMAND in
        record)
            ../.record.sh "$ARG1" "$NAME"
            ;;

        mix)
            ../.mix.sh "$ARG1" "$ARG2" "$NAME"
            ;;

        quit)
            exit
            ;;

        bpm)
            echo "$ARG1" > bpm
            ;;

        ?)
            ../.help.sh
            ;;

        *)
            ../.help.sh
            ;;
    esac

done
