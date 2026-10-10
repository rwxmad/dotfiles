pragma Singleton

import QtQuick
import Quickshell

Singleton {
  // Focuses the TUI's terminal if it's already open, launches it otherwise
  function openTui(app: string): void {
    Quickshell.execDetached(["launch-or-focus-tui", app]);
  }

  function truncate(text: string, maxLength: int): string {
    return text.length > maxLength ? text.slice(0, maxLength) + "…" : text;
  }
}
