// swift-tools-version: 5.7

import PackageDescription

let package = Package(
    name: "Mappy",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "Mappy",
            targets: ["MappyWrapper", "Mappy"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Esri/arcgis-runtime-ios/", exact: "100.15.2"),  // Mapping and GIS functionality
        .package(url: "https://github.com/beMappy/CocoaLumberjackSwift/", exact: "3.7.4-SPM2"), // Powerful & flexible logging framework
        .package(url: "https://github.com/beMappy/Mappy-KeychainAccess/", exact: "4.2.2-SPM"), // Simple Swift wrapper for Keychain
        .package(url: "https://github.com/beMappy/Swinject/", exact: "2.8.2-SPM"), // A lightweight dependency injection framework.
        .package(url: "https://github.com/beMappy/ZIPFoundation/", exact: "0.9.15-SPM"), // zip and unzip items
        .package(url: "https://github.com/beMappy/Reachability.swift/", exact: "5.1.0-SPM"), // To check Internet connection status
        .package(url: "https://github.com/beMappy/PusherSwift/", exact: "10.1.1-SPM"), // Messaging infrastructure
        .package(url: "https://github.com/beMappy/RealmSwift", exact: "10.39.1-SPM"),
    ],
    targets: [
        .target(
            name: "MappyWrapper",
            dependencies: [
                .target(name: "Mappy"),
                .product(name: "ArcGIS", package: "arcgis-runtime-ios"),
                .product(name: "CocoaLumberjackSwift", package: "CocoaLumberjackSwift"),
                .product(name: "KeychainAccess", package: "Mappy-KeychainAccess"),
                .product(name: "Swinject", package: "Swinject"),
                .product(name: "ZIPFoundation", package: "ZIPFoundation"),
                .product(name: "Reachability", package: "Reachability.swift"),
                .product(name: "PusherSwift", package: "PusherSwift"),
                .product(name: "RealmSwift", package: "RealmSwift"),
            ]),
        .binaryTarget(name: "Mappy", path: "./Mappy.xcframework"),
    ]
)
