pragma Singleton

import QtQuick
import Quickshell

Singleton {
  id: root

  property QtObject active: null

  function request(owner: QtObject): void {
    root.active = owner;
  }

  function release(owner: QtObject): void {
    if (root.active === owner)
      root.active = null;
  }
}
