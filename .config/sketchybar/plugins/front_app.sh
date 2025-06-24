#!/bin/sh

source "$CONFIG_DIR/constants.sh"

# Some events send additional information specific to the event in the $INFO
# variable. E.g. the front_app_switched event sends the name of the newly
# focused application in the $INFO variable:
# https://felixkratz.github.io/SketchyBar/config/events#events-and-scripting

if [ "$SENDER" = "front_app_switched" ]; then
	sketchybar --set $NAME label="$INFO" icon.background.drawing=on \
                                         icon.background.image="app.$INFO" \
                                         icon.background.image.scale=0.8
fi
