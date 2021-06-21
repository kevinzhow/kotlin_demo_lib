// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "kotlin_demo_lib",
    products: [
        .library(
            name: "kotlin_demo_lib",
            targets: ["kotlin_demo_lib", "HappyNasa"]),
    ],
    targets: [
        .target(
            name: "kotlin_demo_lib",
            dependencies: []),
        .binaryTarget(
                    name: "HappyNasa",
                    path: "Sources/happy_lib.xcframework"),
        .testTarget(
            name: "kotlin_demo_libTests",
            dependencies: ["kotlin_demo_lib"]),
    ]
)
