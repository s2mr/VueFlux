// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "VueFlux",
    platforms: [
        .iOS(.v9),
        .tvOS(.v9),
        .macOS(.v10_10),
        .watchOS(.v2)
    ],
    products: [
        .library(
            name: "VueFlux",
            targets: ["VueFlux"]
        ),
        .library(
            name: "VueFluxReactive",
            targets: ["VueFluxReactive"]
        )
    ],
    targets: [
        .target(
            name: "VueFlux",
            path: "VueFlux",
            dependencies: ["VueFluxInternalCore"]
        ),
        .target(
            name: "VueFluxReactive",
            path: "VueFluxReactive",
            dependencies: ["VueFlux"]
        ),
        .target(
            name: "VueFluxInternalCore",
            path: "VueFluxInternalCore"
        )
        .testTarget(
            name: "VueFluxTests",
            dependencies: ["VueFlux", "VueFluxReactive"],
            path: "Tests"
        )
    ],
    swiftLanguageVersions: [.v4_2]
)
