#!/bin/sh

sketchybar --add item music center \
           --set music update_freq=5 \
                       script="$PLUGIN_DIR/music.sh" \
                       background.drawing=on \
                       background.height="$ITEM_HEIGHT" \
                       background.color="$ITEM_BACKGROUND" \
                       background.corner_radius="$ROUNDING" \
                       background.padding_left="$PADDING" \
                       background.padding_right="$PADDING" \
           --subscribe battery system_woke power_source_change

