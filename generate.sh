#!/bin/sh

set -e

SPEC_FILE=spec.conf
OUTPUT_FILE=Dracula.theme

if [ -f $SPEC_FILE ]; then
    . $SPEC_FILE
else
    exit 1 # SPEC_FILE not found
fi

cat << EOF > $OUTPUT_FILE
[Scheme]
NAME=Dracula
ColorCursor=$Foreground
ColorForeground=$Foreground
ColorBackground=$Background
ColorPalette=$AnsiBlack;$AnsiRed;$AnsiGreen;$AnsiYellow;$AnsiBlue;$AnsiMagenta;$AnsiCyan;$AnsiWhite;$AnsiBrightBlack;$AnsiBrightRed;$AnsiBrightGreen;$AnsiBrightYellow;$AnsiBrightBlue;$AnsiBrightMagenta;$AnsiBrightCyan;$AnsiBrightWhite
EOF

# TODO
# --with-cursor-color
# --with-tab-activity-color
# --with-color-selection-background

