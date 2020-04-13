#!/bin/sh
while [ 1 ]; do
    read -p '> ' COMMAND ARG1 ARG2

    case COMMAND in
        record)
            ../.record "$ARG1"
            ;;

        mix)
            ../.mix "$ARG1" "$ARG2"
            ;;

        quit)
            exit
            ;;

        *)
    esac

done
