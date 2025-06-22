#!/bin/bash

update() {
  source "$CONFIG_DIR/icons.sh"

  # Get SSID (wi-fi network name)
  SSID=$(ipconfig getsummary $(networksetup -listallhardwareports | awk '/Hardware Port: Wi-Fi/{getline; print $2}') | awk -F ' SSID : ' '/ SSID : / {print $2}')

  # Check if connection exists
  if [ -n "$SSID" ]; then
    ICON="$WIFI_CONNECTED"
    LABEL="$SSID"
  else
    ICON="$WIFI_DISCONNECTED"
    LABEL="Disconnected"
  fi

  # Update sketchybar
  sketchybar --set $NAME icon="$ICON"\
                        label="$LABEL"\
                        label.padding_left=4
}

click() {
  CURRENT_WIDTH="$(sketchybar --query $NAME | jq -r .label.width)"
  WIDTH=0
  if [ "$CURRENT_WIDTH" -eq "0" ]; then
    WIDTH=dynamic
  fi
  sketchybar --animate sin 20 --set $NAME label.width="$WIDTH"
}

case "$SENDER" in
  "wifi_change"|"network_change"|"system_woke")
    update
    ;;
  "mouse.clicked")
    click
    ;;
esac
