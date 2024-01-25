#!/bin/sh

ARTIST="$(cmus-remote -Q | grep -m1 "artist" | cut -d' ' -f3-)"
TITLE="$(cmus-remote -Q | grep -m1 "title" | cut -c 11-)"

echo -n "$ARTIST - $TITLE"
