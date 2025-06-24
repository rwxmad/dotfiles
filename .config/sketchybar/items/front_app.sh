#!/bin/sh

source "$CONFIG_DIR/constants.sh"

front_app=(
  label.align=center
  label.padding_left=$PADDING
  label.padding_right=$PADDING
  label.font="$FONT:Bold:14.0"
  display=active
  script="$PLUGIN_DIR/front_app.sh"
  background.drawing=on
  background.color="$ITEM_BACKGROUND"
  background.corner_radius="$ROUNDING"
  background.height="$ITEM_HEIGHT"
)

sketchybar --add item chevron left \
           --set chevron icon= label.drawing=off \
           --add item front_app left \
           --set front_app "${front_app[@]}" \
           --subscribe front_app front_app_switched
