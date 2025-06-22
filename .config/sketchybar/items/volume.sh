#!/bin/bash

sketchybar --add item volume right \
            --set volume script="$PLUGIN_DIR/volume.sh" \
                         background.drawing=on \
                         background.color="$ITEM_BACKGROUND" \
                         background.corner_radius="$ROUNDING" \
                         background.height="$ITEM_HEIGHT" \
                         icon.padding_left="$PADDING" \
                         label.padding_right="$PADDING" \
            --subscribe volume volume_change \
