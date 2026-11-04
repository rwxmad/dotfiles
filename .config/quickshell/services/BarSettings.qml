pragma Singleton

import QtQuick
import Quickshell
import Quickshell.Io

Singleton {
  property alias weekStartDay: adapter.weekStartDay
  property alias birthYear: adapter.birthYear
  property alias lifeExpectancy: adapter.lifeExpectancy
  property alias batteryPercentage: adapter.batteryPercentage
  property alias weatherLocation: adapter.weatherLocation
  property alias weatherCoordinates: adapter.weatherCoordinates
  property alias trayPinned: adapter.trayPinned
  property alias trayHidden: adapter.trayHidden

  FileView {
    path: Quickshell.statePath("bar.json")
    watchChanges: true

    onFileChanged: reload()
    onAdapterUpdated: writeAdapter()
    // defaults on first run
    onLoadFailed: error => {
      if (error === FileViewError.FileNotFound)
        writeAdapter();
    }

    JsonAdapter { // qmllint disable unresolved-type
      id: adapter

      // Calendar: weekday name or "" for the locale's first day
      property string weekStartDay: ""
      property int birthYear: 0
      property int lifeExpectancy: 90
      property bool batteryPercentage: false

      // empty location detects it from the IP address; coordinates are [latitude, longitude] or empty
      property string weatherLocation: ""
      property list<real> weatherCoordinates: []
      property list<string> trayPinned: []
      property list<string> trayHidden: []
    }
  }
}
