// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "EKIPLocation",
    platforms: [.iOS(.v10), .tvOS(.v10), .macOS(.v10_14), .watchOS(.v5)],
    products: [.library(name: "EKIPLocation", targets: ["EKIPLocation"])],
    dependencies: [],
    targets: [
        .target(name: "EKIPLocation", dependencies: []),
        .testTarget(name: "EKIPLocationTests", dependencies: ["EKIPLocation"]),
    ]
)
