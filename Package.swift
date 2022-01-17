// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Koloda",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "Koloda",
            targets: ["Koloda"]),
    ],
    dependencies: [
        .package(url: "https://github.com/ai-ander/pop", .branch("master")),
    ],
    targets: [
        .target(
            name: "Koloda",
            dependencies: [.product(name: "pop", package: "pop")],
            path: "Sources"
        )
    ],
    swiftLanguageVersions: [.v5]
)
