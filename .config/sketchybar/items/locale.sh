#!/bin/bash

sketchybar --add alias "TextInputMenuAgent,Item-0" right \
           --set "TextInputMenuAgent,Item-0" background.drawing=on \
                                             background.color="$ITEM_BACKGROUND" \
                                             background.height="$ITEM_HEIGHT" \
                                             background.corner_radius="$ROUNDING"

