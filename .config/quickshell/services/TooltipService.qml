pragma Singleton

import QtQuick
import Quickshell

Singleton {
  id: root

  property Item target: null
  property string text
  property bool shown: false

  property Item pending: null
  property int request: 0

  function show(item: Item, text: string): void {
    const warm = shown || warmDelay.running;
    clear();
    const current = ++request;

    if (!item || text === "")
      return;

    pending = item;

    Qt.callLater(() => {
      if (current !== root.request)
        return;

      root.pending = null;
      root.target = item;
      root.text = text;

      if (warm)
        root.shown = true;
      else
        showDelay.restart();
    });
  }

  function hide(item: Item): void {
    if (item !== target && item !== pending)
      return;

    request++;
    clear();
  }

  function clear(): void {
    showDelay.stop();

    if (shown)
      warmDelay.restart();

    pending = null;
    target = null;
    text = "";
    shown = false;
  }

  function targetVisible(): bool {
    return target !== null && target.visible && target.opacity !== 0;
  }

  Timer {
    id: showDelay

    interval: 400

    onTriggered: {
      if (root.targetVisible())
        root.shown = true;
      else
        root.clear();
    }
  }

  Timer {
    id: warmDelay

    interval: 400
  }

  Timer {
    interval: 100
    running: root.shown
    repeat: true

    onTriggered: {
      if (!root.targetVisible())
        root.clear();
    }
  }
}
