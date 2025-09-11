##### Adding Mission Control Space Indicators #####
# Let's add some mission control spaces:
# https://felixkratz.github.io/SketchyBar/config/components#space----associate-mission-control-spaces-with-an-item
# to indicate active and available mission control spaces.

# TODO: dynamic icons?

SPACE_ICONS=("1 􀩼" "2 􀎬" "3 􀑬" "4 􁜾" "5 􀒋" "6 􁒘" "7 􀫓" "8 􀢅" "9 􀛸" "10")
for i in "${!SPACE_ICONS[@]}"
do
  sid="$(($i+1))"
  space=(
    space="$sid"
    icon="${SPACE_ICONS[i]}"
    icon.padding_left="$PADDING"
    icon.padding_right="$PADDING"
    icon.color="$FG"
    background.color="$ACCENT_COLOR"
    background.corner_radius="$ROUNDING"
    background.height="$ITEM_HEIGHT"
    label.drawing=off
    script="$PLUGIN_DIR/space.sh"
    click_script="yabai -m space --focus $sid"
  )
  sketchybar --add space space."$sid" left --set space."$sid" "${space[@]}"
done
