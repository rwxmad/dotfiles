pragma Singleton

import QtQuick
import Quickshell

Singleton {
  readonly property string fontFamily: "JetBrainsMono Nerd Font"

  readonly property int fontCaption: 10
  readonly property int fontBodySmall: 11
  readonly property int fontBody: 12
  readonly property int fontSubtitle: 13
  readonly property int fontTitle: 14
  readonly property int fontIconLarge: 18
  readonly property int fontDisplay: 24
  readonly property int fontDisplayLarge: 28

  readonly property int barHeight: 26
  readonly property real barEdgeMargin: 8 // between the screen edge and the left/right sections
  readonly property int iconSlot: 27 // width of an icon widget
  readonly property int iconCanvas: 16
  readonly property int iconFont: 13
  readonly property int statusSlot: 21

  // Hyprland's decoration
  readonly property int cornerRadius: 4
  readonly property int gapsOut: 2

  readonly property int controlGap: 8
  readonly property int controlPaddingX: 10
  readonly property int controlPaddingY: 6
  readonly property int popupPadding: 14
  readonly property int inputPaddingY: 7

  readonly property real normalFillAlpha: 0.04
  readonly property real hoverFillAlpha: 0.08
  readonly property real selectedFillAlpha: 0.18
  readonly property real pressedFillAlpha: 0.22
  readonly property real selectionFillAlpha: 0.35
  readonly property real normalBorderAlpha: 0.4
  readonly property real hoverBorderAlpha: 0.25
}
