pragma Singleton

import QtQuick
import Quickshell

// Gruvbox dark
Singleton {
  readonly property color background: "#282828"
  readonly property color surface: "#3c3836"
  readonly property color foreground: "#ebdbb2"
  readonly property color gray: "#928374"
  readonly property color red: "#cc241d"
  readonly property color green: "#98971a"
  readonly property color yellow: "#d79921"
  readonly property color blue: "#458588"
  readonly property color magenta: "#b16286"
  readonly property color cyan: "#689d6a"
  readonly property color orange: "#d65d0e"

  readonly property color barBackground: Qt.alpha(background, 0.8)
}
