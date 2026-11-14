import QtQuick
import QtQuick.Controls
import qs.commons

ToolTip {
  id: root

  delay: 400
  padding: 0

  background: Rectangle {
    radius: Style.cornerRadius
    color: Colors.background
    border.color: Colors.tooltipBorder
    border.width: 1
  }

  contentItem: Text {
    text: root.text
    textFormat: Text.PlainText
    color: Colors.foreground
    font.family: Style.fontFamily
    font.pixelSize: Style.fontBodySmall
    leftPadding: 1 + Style.controlPaddingX
    rightPadding: 1 + Style.controlPaddingX
    topPadding: 1 + Style.controlPaddingY
    bottomPadding: 1 + Style.controlPaddingY
  }
}
