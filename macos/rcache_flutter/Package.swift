// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "rcache_flutter",
    platforms: [
        .macOS("10.14")
    ],
    products: [
        .library(name: "rcache-flutter", targets: ["rcache_flutter"])
    ],
    dependencies: [],
    targets: [
        .target(
            name: "rcache_flutter",
            dependencies: [],
            resources: [
               .process("Resources"),
            ]
        )
    ]
)
