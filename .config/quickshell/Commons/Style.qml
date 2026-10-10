pragma Singleton

import QtQuick
import Quickshell

// Font and sizes
Singleton {
  readonly property string fontFamily: "JetBrainsMono Nerd Font"
  readonly property int fontSize: 12

  readonly property int barHeight: 26
  readonly property real sectionMargin: 8 // between the screen edge and a bar section
  readonly property real widgetMargin: 7.5 // on each side of a widget
  readonly property real widgetSpacing: widgetMargin * 2
  readonly property int widgetMinWidth: 12
}
