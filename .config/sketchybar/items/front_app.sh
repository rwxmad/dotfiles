#!/bin/sh

sketchybar --add item chevron left \
           --set chevron icon= label.drawing=off \
           --add item front_app left \
           --set front_app icon.drawing=off \
                           script="$PLUGIN_DIR/front_app.sh" \
                           label.align=center \
                           background.drawing=on \
                           background.color="$ITEM_BACKGROUND" \
                           background.corner_radius="$ROUNDING" \
                           background.height="$ITEM_HEIGHT" \
           --subscribe front_app front_app_switched
