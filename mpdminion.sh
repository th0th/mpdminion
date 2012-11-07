#!/bin/sh

CMD_DMENU='dmenu -i'
NUMBER_OF_SONGS=$(mpc playlist | wc -l)
SONG=$(mpc playlist | $CMD_DMENU)

SONG_NO=$(mpc playlist | grep -n "^$SONG$" | sed -e 's/\(.*\):.*/\1/')

mpc play $SONG_NO
