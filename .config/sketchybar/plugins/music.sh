#!/bin/sh

source "$CONFIG_DIR/constants.sh"

ICON=
MAXLEN=60
MAXLEN_CHARS=$((MAXLEN - 1))

# get music status
music_running=$(osascript -e 'tell application "Music" to running' 2>/dev/null)

if [ "$music_running" = "true" ]; then
  music_state=$(osascript -e 'tell application "Music" to player state' 2>/dev/null)
  if [ "$music_state" = "playing" ] || [ "$music_state" = "paused" ]; then
    music_track=$(osascript -e 'tell application "Music" to artist of current track & " — " & name of current track' 2>/dev/null)
  fi
else
  music_state="stopped"
fi

# get spotify status
spotify_running=$(osascript -e 'tell application "Spotify" to running' 2>/dev/null)

if [ "$spotify_running" = "true" ]; then
  spotify_state=$(osascript -e 'tell application "Spotify" to player state' 2>/dev/null)
  if [ "$spotify_state" = "playing" ] || [ "$spotify_state" = "paused" ]; then
    spotify_track=$(osascript -e 'tell application "Spotify" to artist of current track & " — " & name of current track' 2>/dev/null)
  fi
else
  spotify_state="stopped"
fi

# --- Source ---
if [ "$music_state" = "playing" ]; then
  track="$music_track"
  icon=""
elif [ "$spotify_state" = "playing" ]; then
  track="$spotify_track"
  icon=""
elif [ "$music_state" = "paused" ]; then
  track="$music_track"
  icon=""
elif [ "$spotify_state" = "paused" ]; then
  track="$spotify_track"
  icon=""
else
  track="Silence..."
  icon=""
fi

sketchybar --set "$NAME" icon="$icon" \
                         icon.padding_left="$PADDING" \
                         label="$track" \
                         label.max_chars="$MAXLEN_CHARS" \
                         label.padding_right="$PADDING" \
                         scroll_texts=on \


