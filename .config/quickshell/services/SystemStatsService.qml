pragma Singleton

import QtQuick
import Quickshell

Singleton {
  id: root

  property int cpuUsage: 0
  property int memoryUsage: 0
  property int cpuTemp: 0
  property int diskUsage: 0

  // Previous /proc/stat totals: CPU usage is the delta between two reads
  property real previousTotal: 0
  property real previousIdle: 0

  function parseStats(output: string): void {
    const lines = output.trim().split("\n");

    const cpu = lines[0].split(/\s+/).slice(1).map(Number);
    const idle = cpu[3] + cpu[4];
    const total = cpu.reduce((sum, value) => sum + value, 0);

    if (root.previousTotal > 0 && total > root.previousTotal) {
      const busy = 1 - (idle - root.previousIdle) / (total - root.previousTotal);
      root.cpuUsage = Math.round(100 * busy);
    }

    root.previousTotal = total;
    root.previousIdle = idle;

    let memTotal = 0;
    let memAvailable = 0;

    for (const line of lines) {
      const [, key, value] = line.match(/^(MemTotal|MemAvailable):\s+(\d+)/) ?? [];

      if (key === "MemTotal")
        memTotal = Number(value);
      else if (key === "MemAvailable")
        memAvailable = Number(value);
    }

    if (memTotal > 0)
      root.memoryUsage = Math.round(100 * (1 - memAvailable / memTotal));

    const temp = parseInt(lines[lines.length - 1]);

    if (!isNaN(temp))
      root.cpuTemp = Math.round(temp / 1000);
  }

  Poll {
    interval: 2000
    // ThinkPad EC sensor
    command: ["sh", "-c", "head -1 /proc/stat; " + "grep -E '^(MemTotal|MemAvailable):' /proc/meminfo; " + "cat /sys/devices/platform/thinkpad_hwmon/hwmon/hwmon*/temp1_input"]

    onRead: output => root.parseStats(output)
  }

  Poll {
    interval: 30000
    command: ["df", "--output=size,used", "/home"]

    onRead: output => {
      const [size, used] = output.trim().split("\n").pop().trim().split(/\s+/).map(Number);

      if (size > 0)
        root.diskUsage = Math.round(100 * used / size);
    }
  }
}
