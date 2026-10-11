import QtQuick
import Quickshell.Io

// Runs `command` every `interval` ms (and once on start), emitting its stdout
Timer {
  id: root

  property alias command: proc.command
  readonly property Process process: Process {
    id: proc

    stdout: StdioCollector {
      onStreamFinished: root.read(text)
    }
  }

  signal read(string output)

  function poll(): void {
    proc.running = true;
  }

  repeat: true
  running: true
  triggeredOnStart: true

  onTriggered: poll()
}
