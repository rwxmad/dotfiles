pragma Singleton

import QtQuick
import Quickshell

Singleton {
  readonly property string chevronLeft: glyph(0xF053)
  readonly property string workspaceActive: glyph(0xF14FB)
  readonly property string check: glyph(0xF00C)
  readonly property string pin: glyph(0xF08D)
  readonly property string eye: glyph(0xF06E)
  readonly property string chevronLeftMd: glyph(0xF0141)
  readonly property string chevronRightMd: glyph(0xF0142)

  readonly property string clock: glyph(0xF0954)
  readonly property string mapMarker: glyph(0xF041)
  readonly property string loading: glyph(0xF0996)
  readonly property string bell: glyph(0xF009A)
  readonly property string doNotDisturb: glyph(0xF009B)
  readonly property string recording: glyph(0xF0EC2)
  readonly property string stayAwake: glyph(0xF0176)
  readonly property string nightLight: glyph(0xF050E)
  readonly property string calendar: glyph(0xF00ED)

  readonly property string play: glyph(0xF040A)
  readonly property string pause: glyph(0xF03E4)
  readonly property string previous: glyph(0xF04AE)
  readonly property string next: glyph(0xF04AD)
  readonly property string music: glyph(0xF075A)

  readonly property string volumeMuted: glyph(0xEEE8)
  readonly property string volumeLow: glyph(0xF026)
  readonly property string volumeMedium: glyph(0xF027)
  readonly property string volumeHigh: glyph(0xF028)
  readonly property string headphones: glyph(0xF02CB)
  readonly property string speaker: glyph(0xF04C3)
  readonly property string camera: glyph(0xF0100)
  readonly property string streamOn: glyph(0xF057E)
  readonly property string streamMuted: glyph(0xF075F)
  readonly property string microphone: glyph(0xF036C)
  readonly property string microphoneOff: glyph(0xF036D)

  readonly property string monitor: glyph(0xF0379)
  readonly property string monitors: glyph(0xF037A)
  readonly property string enabled: glyph(0xF012C)

  readonly property string bluetooth: glyph(0xF00AF)
  readonly property string bluetoothOff: glyph(0xF00B2)
  readonly property string bluetoothConnected: glyph(0xF00B1)

  readonly property list<string> wifi: glyphs([0xF092F, 0xF091F, 0xF0922, 0xF0925, 0xF0928])
  readonly property string ethernet: glyph(0xF0200)
  readonly property string disconnected: glyph(0xF092E)

  readonly property list<string> battery: glyphs([0xF007A, 0xF007B, 0xF007C, 0xF007D, 0xF007E, 0xF007F, 0xF0080, 0xF0081, 0xF0082, 0xF0079])
  readonly property list<string> batteryCharging: glyphs([0xF089C, 0xF0086, 0xF0087, 0xF0088, 0xF089D, 0xF0089, 0xF089E, 0xF008A, 0xF008B, 0xF0085])
  readonly property string batteryFull: glyph(0xF0085)
  readonly property string powerSaver: glyph(0xF032A)
  readonly property string balanced: glyph(0xF029A)
  readonly property string performance: glyph(0xF04C5)

  readonly property string cpu: glyph(0xF061A)
  readonly property string memory: glyph(0xF035B)
  readonly property list<string> temperature: glyphs([0xF10C3, 0xF050F, 0xF10C2])
  readonly property string disk: glyph(0xF02CA)

  function glyph(codepoint: int): string {
    return String.fromCodePoint(codepoint);
  }

  function glyphs(codepoints: list<int>): list<string> {
    return codepoints.map(codepoint => String.fromCodePoint(codepoint));
  }
}
