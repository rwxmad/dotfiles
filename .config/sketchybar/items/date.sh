#!/bin/bash

sketchybar --add item date right \
           --set date  update_freq=10 \
                       icon=􀧞  \
                       script="$PLUGIN_DIR/date.sh" \
                       icon.padding_left="$PADDING" \
                       background.height=30 \
                       background.drawing=on \
                       background.color="$ITEM_BACKGROUND" \
                       background.corner_radius="$ROUNDING" \

