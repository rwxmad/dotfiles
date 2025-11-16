#!/usr/bin/env bash

declare -A URLS=(
  ["google"]="https://www.google.com/search?q="
  ["github"]="https://github.com/search?q="
  ["youtube"]="https://www.youtube.com/results?search_query="
  ["imdb"]="http://www.imdb.com/find?ref_=nv_sr_fn&q="
)

declare -A ICONS=(
  ["google"]=" "
  ["github"]=" "
  ["youtube"]=" "
  ["imdb"]=" "
)

gen_list() {
  for key in "${!URLS[@]}"; do
    glyph="${ICONS[$key]}"
    if [[ -n "$glyph" ]]; then
      printf '%s\0display\x1f%s %s\n' "$key" "$glyph" "$key"
    else
      printf '%s\n' "$key"
    fi
  done
}

main() {
  platform=$( (gen_list) | rofi -dmenu -matching fuzzy -no-custom -location 0 -p "󰖟 Search  " )

  if [[ -n "$platform" ]]; then
    query=$( (echo ) | rofi  -dmenu -matching fuzzy -location 0 -p "󰜏 Query  " )

    if [[ -n "$query" ]]; then
      url=${URLS[$platform]}$query
      xdg-open "$url"
    else
      exit
    fi

  else
    exit
  fi
}

main

exit 0
