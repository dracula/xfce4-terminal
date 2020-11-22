#!/bin/sh

set -e

SPEC_FILE=./spec.conf
OUTPUT_FILE=Dracula.theme

if [ -f $SPEC_FILE ]; then
    . $SPEC_FILE
else
    exit(1) # SPEC_FILE not found
fi

cat << EOF > $OUTPUT_FILE
[Scheme]
NAME=Dracula
ColorCursor=$Foreground
ColorForeground=$Foreground
ColorBackground=$Background
TabActivityCOlor=
ColorPalette=
ColorSelectionBackground=
EOF

