pragma ComponentBehavior: Bound

import QtQuick
import Quickshell.Hyprland
import qs.commons
import qs.ui

Item {
  id: root

  readonly property list<int> workspaceIds: {
    const ids = new Set([1, 2, 3, 4, 5]);

    for (const workspace of Hyprland.workspaces.values) {
      if (workspace.id > 0 && workspace.id <= 10)
        ids.add(workspace.id);
    }

    return Array.from(ids).sort((a, b) => a - b);
  }

  readonly property real trailingGap: 1.5

  function workspaceById(id: int): HyprlandWorkspace {
    return Hyprland.workspaces.values.find(workspace => workspace.id === id) ?? null;
  }

  function focusWorkspace(id: int): void {
    Hyprland.dispatch(`hl.dsp.focus({ workspace = "${id}" })`);
  }

  implicitWidth: row.implicitWidth + trailingGap
  implicitHeight: row.implicitHeight

  Row {
    id: row

    spacing: 1

    Repeater {
      model: root.workspaceIds

      WidgetButton {
        id: button

        required property int modelData
        readonly property HyprlandWorkspace workspace: root.workspaceById(modelData)
        readonly property bool occupied: (workspace?.toplevels.values.length ?? 0) > 0
        readonly property bool focused: Hyprland.focusedWorkspace?.id === modelData

        text: focused ? Icons.workspaceActive : modelData === 10 ? "0" : String(modelData)
        opacity: occupied || focused ? 1 : 0.5
        horizontalMargin: 6
        fixedWidth: 20

        onPressed: root.focusWorkspace(modelData)
      }
    }
  }
}
