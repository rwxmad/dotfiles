#!/bin/sh

source "$CONFIG_DIR/icons.sh"

PERCENTAGE="$(pmset -g batt | grep -Eo "\d+%" | cut -d% -f1)"
CHARGING="$(pmset -g batt | grep 'AC Power')"

if [ "$PERCENTAGE" = "" ]; then
  exit 0
fi

case "${PERCENTAGE}" in
  9[0-9]|100) ICON="$BATTERY_100"
  ;;
  [6-8][0-9]) ICON="$BATTERY_75"
  ;;
  [3-5][0-9]) ICON="$BATTERY_50"
  ;;
  [1-2][0-9]) ICON="$BATTERY_25"
  ;;
  *) ICON="$BATTERY_0"
esac

if [ -n "$CHARGING" ]; then
  ICON="$BATTERY_CHARGING"
fi

# The item invoking this script (name $NAME) will get its icon and label
# updated with the current battery status
sketchybar --set "$NAME" icon="$ICON" label="${PERCENTAGE}%"
