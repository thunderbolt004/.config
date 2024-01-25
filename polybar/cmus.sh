#!/bin/sh

# m1 to stop after the first match
# seems "^tag title" should be faster than "title"
# seems "-c 11-" should be faster than "-d' ' -f3-"
ARTIST="$(cmus-remote -Q | grep -m1 "^tag artist" | cut -c 12-)"
TITLE="$(cmus-remote -Q | grep -m1 "^tag title" | cut -c 11-)"

if [ "$TITLE" = "" ]; then
    TITLE="$(cmus-remote -Q | grep -m1 "^file" | awk -F'/' '{print $NF}')"
fi

printf "%s - %s" "$ARTIST" "$TITLE"
