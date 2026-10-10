pragma Singleton

import QtQuick
import Quickshell

// Nerd Font glyphs
Singleton {
  readonly property string chevronLeft: glyph(0xF053)
  readonly property string workspaceActive: glyph(0xF14FB)
  readonly property string play: glyph(0xF040A)
  readonly property string clock: glyph(0xF0954)
  readonly property string calendar: glyph(0xF00EE)

  readonly property string cpu: glyph(0xF061A)
  readonly property string memory: glyph(0xF035B)
  readonly property list<string> temperature: glyphs([0xF10C3, 0xF050F, 0xF10C2])
  readonly property string disk: glyph(0xF02CA)
  readonly property list<string> brightness: glyphs([0xF00DE, 0xF00DF, 0xF00E0])

  readonly property list<string> volume: glyphs([0xF057F, 0xF0580, 0xF057E])
  readonly property string muted: glyph(0xF075F)
  readonly property string headphone: glyph(0xF02CB)
  readonly property string handsFree: glyph(0xF0970)
  readonly property string headset: glyph(0xF02CE)
  readonly property string phone: glyph(0xF03F2)
  readonly property string portable: glyph(0xF011D)
  readonly property string car: glyph(0xF010B)
  readonly property string microphone: glyph(0xED03)
  readonly property string microphoneOff: glyph(0xEFC6)

  readonly property string bluetooth: glyph(0xF294)
  readonly property string bluetoothOff: glyph(0xF00B2)
  readonly property string bluetoothConnected: glyph(0xF00B1)
  readonly property string bluetoothAudio: glyph(0xF00B0)

  readonly property list<string> wifi: glyphs([0xF092F, 0xF091F, 0xF0922, 0xF0925, 0xF0928])
  readonly property string wifiOff: glyph(0xF092E)
  readonly property string ethernet: glyph(0xF0002)

  readonly property list<string> battery: glyphs([0xF007A, 0xF007B, 0xF007C, 0xF007D, 0xF007E, 0xF007F, 0xF0080, 0xF0081, 0xF0082, 0xF0079])
  readonly property list<string> batteryCharging: glyphs([0xF089C, 0xF0086, 0xF0087, 0xF0088, 0xF089D, 0xF0089, 0xF089E, 0xF008A, 0xF008B, 0xF0085])
  readonly property string batteryFull: glyph(0xF0085)

  function glyph(codepoint: int): string {
    return String.fromCodePoint(codepoint);
  }

  function glyphs(codepoints: list<int>): list<string> {
    return codepoints.map(codepoint => String.fromCodePoint(codepoint));
  }

  // Picks the icon for a 0-100 value
  function level(icons: list<string>, percent: real): string {
    const index = Math.floor(percent * icons.length / 100);
    return icons[Math.max(0, Math.min(icons.length - 1, index))];
  }
}
