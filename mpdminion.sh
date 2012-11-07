#!/bin/sh

CMD_DMENU='dmenu -i'
SONG=$(mpc playlist | $CMD_DMENU)

SONG_NO=$(mpc playlist | grep -n "^$SONG$" | sed -e 's/\(.*\):.*/\1/')

# check if dmenu really returned something
if [ ! -z "$SONG_NO" ]; then
	mpc play $SONG_NO
fi
