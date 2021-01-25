#!/bin/sh

PALETTE_FILE=palette.conf
OUTPUT_FILE=Dracula.theme

if [ -f $PALETTE_FILE ]; then
    . ./$PALETTE_FILE
else
    echo $PALETTE_FILE not found.
    exit 1
fi

cat << EOF > $OUTPUT_FILE
[Scheme]
Name=Dracula
ColorCursor=$Foreground
ColorForeground=$Foreground
ColorBackground=$Background
ColorPalette=$AnsiBlack;$AnsiRed;$AnsiGreen;$AnsiYellow;$AnsiBlue;$AnsiMagenta;$AnsiCyan;$AnsiWhite;$AnsiBrightBlack;$AnsiBrightRed;$AnsiBrightGreen;$AnsiBrightYellow;$AnsiBrightBlue;$AnsiBrightMagenta;$AnsiBrightCyan;$AnsiBrightWhite
EOF

# TODO
# --with-cursor-color
# --with-tab-activity-color
# --with-color-selection-background

