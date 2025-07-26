// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "OpusBinding",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_13)
    ],
    products: [
        .library(
            name: "OpusBinding",
            targets: ["OpusBinding"]),
    ],
    dependencies: [
        .package(url: "https://github.com/uuneo/libopus.git", from: "1.0.15")
    ],
    targets: [
        .target(
            name: "OpusBinding",
            dependencies: ["libopus"],
            path: "Sources/OpusBinding",
            publicHeadersPath: "include",
            cSettings: [
                .headerSearchPath("."),
                .headerSearchPath("ogg"),
                .headerSearchPath("opusenc"),
                .headerSearchPath("opusfile")
            ]
        )
    ]
)

