#!/bin/bash

source "${CONFIG_DIR}/icons.sh"

wifi=(
  label.width=0
  label.padding_left="$PADDING"
  label.padding_right="$PADDING"
  icon="$WIFI_DISCONNECTED"
  icon.padding_left="$PADDING"
  icon.padding_right="$PADDING"
  script="$PLUGIN_DIR/wifi.sh"
  background.drawing=on
  background.height="$ITEM_HEIGHT"
  background.color="$ITEM_BACKGROUND"
  background.corner_radius="$ROUNDING"
)

sketchybar --add item wifi right \
  --set wifi "${wifi[@]}" \
  --subscribe wifi wifi_change mouse.clicked
