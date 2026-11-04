pragma Singleton

import QtQuick
import Quickshell

Singleton {
  id: root

  property QtObject active: null
  property var card: null

  function request(owner: QtObject): void {
    root.active = owner;
  }

  function noteCard(owner: QtObject, rect: var): void {
    if (root.active === owner)
      root.card = Object.assign({
        owner: owner
      }, rect);
  }

  // The open card of another panel in the same section and on the same screen, if there is one
  function cardFor(owner: QtObject, section: string, screen: string): var {
    const last = root.card;
    if (!last || !root.active || root.active !== last.owner || last.owner === owner)
      return null;
    return last.section === section && last.screen === screen ? last : null;
  }

  function release(owner: QtObject): void {
    if (root.active === owner)
      root.active = null;
  }
}
