#!/bin/sh

source "$CONFIG_DIR/colors.sh"

# The $SELECTED variable is available for space components and indicates if
# the space invoking this script (with name: $NAME) is currently selected:
# https://felixkratz.github.io/SketchyBar/config/components#space----associate-mission-control-spaces-with-an-item

COLOR=$BG
TEXT_COLOR=$FG

if [ "$SELECTED" = "true" ]; then
  COLOR=$GREEN
  TEXT_COLOR=$BG
fi

space=(
  icon.color="$TEXT_COLOR"
  background.color="$COLOR"
)

sketchybar --set "$NAME" "${space[@]}"
