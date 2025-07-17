#!/usr/bin/env bash

LANG=$(defaults read com.apple.HIToolbox AppleSelectedInputSources | rg "KeyboardLayout Name" | head -1 | awk -F '= ' '{print $2}' | tr -d '";' | xargs | cut -c1-3)

sketchybar --set $NAME label="$LANG"

