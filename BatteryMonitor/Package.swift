// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "BatteryMonitor",
    platforms: [
        .macOS(.v13)
    ],
    targets: [
        .executableTarget(
            name: "BatteryMonitor",
            path: "Sources/BatteryMonitor"
        )
    ]
)
