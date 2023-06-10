// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Mappy",
    /*
    platforms: [
        .iOS(.v14)
    ],
    */
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "Mappy",
            targets: ["MappyWrapper"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Esri/arcgis-runtime-ios/", exact: "100.15.2"),  // Mapping and GIS functionality
        .package(url: "https://github.com/beMappy/CocoaLumberjackSwift/", branch: "SPM"), // Powerful & flexible logging framework
        .package(url: "https://github.com/beMappy/CocoaLumberjack/", branch: "SPM"), // Powerful & flexible logging framework
        .package(url: "https://github.com/beMappy/Mappy-KeychainAccess/", branch: "SPM"), // Simple Swift wrapper for Keychain
        .package(url: "https://github.com/beMappy/Swinject/", branch: "SPM"), // A lightweight dependency injection framework.
        .package(url: "https://github.com/beMappy/ZIPFoundation/", branch: "SPM"), // zip and unzip items
        .package(url: "https://github.com/beMappy/Reachability.swift/", branch: "SPM"), // To check Internet connection status
        .package(url: "https://github.com/beMappy/PusherSwift/", branch: "SPM"), // Messaging infrastructure
        
        // !!!: to be replaced with the real beMappy ones, these are here because of permissions problems
        .package(url: "https://github.com/thisma/Realm", branch: "SPM"),
        .package(url: "https://github.com/thisma/RealmSwift", branch: "SPM"),
//        .package(url: "https://github.com/beMappy/RealmSwift/", branch: "SPM"), // Database
        /*
        .package(url: "https://github.com/beMappy/CocoaLumberjackSwift/", exact: "3.7.4-xc14-3"), // Powerful & flexible logging framework
        .package(url: "https://github.com/beMappy/Mappy-KeychainAccess/", exact: "4.2.2"), // Simple Swift wrapper for Keychain
        .package(url: "https://github.com/beMappy/Swinject/", exact: "2.8.2"), // A lightweight dependency injection framework.
        .package(url: "https://github.com/beMappy/ZIPFoundation/", exact: "0.9.15"), // zip and unzip items
        .package(url: "https://github.com/beMappy/Reachability.swift/", exact: "5.1.0-xc14.2-1"), // To check Internet connection status
        .package(url: "https://github.com/beMappy/PusherSwift/", exact: "10.1.1-xc14.2-2"), // Messaging infrastructure
        .package(url: "https://github.com/beMappy/RealmSwift/", exact: "10.39.1"), // Database
         */
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "MappyWrapper",
            dependencies: [
                .target(name: "Mappy"),
            ]),
        .binaryTarget(name: "Mappy", path: "./Mappy.xcframework"),
    ]
)
