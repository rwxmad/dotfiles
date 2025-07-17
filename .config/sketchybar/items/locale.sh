#!/bin/bash

source "$CONFIG_DIR/constants.sh"

sketchybar --add item locale right \
           --set locale update_freq=1 \
                        script="$PLUGIN_DIR/locale.sh" \
                        click_script="$SCRIPTS_DIR/toggle_locale.sh" \
                        icon.drawing=off \
                        label.padding_left=$PADDING \
                        label.padding_right=$PADDING \
                        label.align=center \
                        background.drawing=on \
                        background.color="$ITEM_BACKGROUND" \
                        background.height="$ITEM_HEIGHT" \
                        background.corner_radius="$ROUNDING"

