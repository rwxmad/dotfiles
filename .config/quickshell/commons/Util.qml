pragma Singleton

import QtQuick
import Quickshell

Singleton {
  function openTui(app: string): void {
    Quickshell.execDetached(["launch-or-focus-tui", app]);
  }

  function wheelSteps(accumulator: real, delta: real): var {
    const clamped = Math.max(-120, Math.min(120, delta));
    const total = (accumulator * clamped < 0 ? 0 : accumulator) + clamped;
    const steps = total < 0 ? Math.ceil(total / 120) : Math.floor(total / 120);

    return {
      steps,
      remainder: total - steps * 120
    };
  }
}
