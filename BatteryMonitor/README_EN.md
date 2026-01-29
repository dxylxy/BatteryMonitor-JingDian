# Battery Monitor (Static)

> Minimalist aesthetics, silent guardian.

[中文](README.md)

A macOS menu bar battery monitor application following modern aesthetic principles. Minimalist design, extremely low system resource usage.

![License](https://img.shields.io/badge/license-MIT-black.svg)
![Platform](https://img.shields.io/badge/platform-macOS%2013%2B-black.svg)
![Swift](https://img.shields.io/badge/swift-5.9-black.svg)

## Design Philosophy

- **Minimalism** - Pure black and white UI design, rejecting fancy elements, returning to the essence.
- **Silent & Invisible** - Extremely low power consumption, CPU usage < 0.1%, Memory usage < 20MB.
- **Modern Aesthetics** - Redesigned icons and interface, perfectly integrating with macOS modern design language.

## Features

- ⚡️ **Minimalist Icon** - Brand new black and white style battery icon with imaginative lines.
- 🔋 **Deep Monitoring** - Real-time monitoring of voltage, amperage, power, and temperature.
- 📊 **Energy Analysis** - Visualize energy consumption share of each application, accurately locating "battery drains".
- ⏱ **Real-time Refresh** - Second-level refresh when the menu is open, automatically entering low power mode (60s/time) when closed.
- 🚀 **Launch at Login** - Built-in system-level startup management, no complex settings required.
- 🛡 **Background Resident** - Menu bar application mode, never suspended by the system, always on standby.
- 🌍 **Internationalization** - Supports English and Simplified Chinese (auto-switch based on system language).

## Preview

```text
[Icon] 85%
├── Battery: 3200 / 3749 mAh (85%)
├── Power: 5.23 W · -410 mA
├── Temp: 29.7°C · Volt: 12.67 V
├── Consumed: 549 mAh (15%) · 2:34:56
├── Avg: 213 mAh/h
├── Health: 85% · Cycles: 207 · Design: 4382 mAh
├── App Energy History ▶
│   └── Past 4 Hours ▶
│       ├── Total Drain: 120 mAh (3%)
│       ├── █ 42mAh (1.2%) Safari [Running]
│       └── ░ 35mAh (1.0%) Xcode
└── Active Apps (Live) ▶
    ├── █  12.3% WindowServer
    └── ░   8.5% Safari
```

## Installation

### Method 1: Download App (Recommended)
Download the latest `Battery Monitor.dmg` (or `静•电.dmg`) from [Releases](../../releases).
1. Double-click to open the DMG file.
2. Drag `Battery Monitor` into the `Applications` folder.
3. Launch the app and enjoy the silent guardian.

### Method 2: Build from Source
```bash
git clone https://github.com/dxylxy/BatteryMonitor-JingDian.git
cd BatteryMonitor
./package.sh
# After building, find the installation package in the dist/ directory
```

## Technical Details

- **Language**: Swift 5.9
- **Frameworks**: AppKit, IOKit, ServiceManagement
- **Architecture**: Pure native implementation, no large third-party dependencies.
- **Optimization**: 
  - Intelligent timer strategy: Foreground 1s / Background 60s
  - Process filtering: Automatically exclude self and system daemon processes
  - Tolerance handling: Timer tolerance 10s, allowing system to coalesce wake-ups to save power

## License

MIT License

---
Copyright © 2026 Lyon. All rights reserved.
