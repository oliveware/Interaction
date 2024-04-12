// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Interaction",
    platforms: [.iOS(.v13),.macOS(.v14)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "Interaction",
            targets: ["Interaction"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "http://github.com/oliveware/Xbus", branch: "main"),
        .package(url: "http://github.com/oliveware/DataVault", branch: "main"),
        .package(url: "http://github.com/oliveware/Distribution", branch: "main")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "Interaction",
            dependencies: ["Xbus","DataVault","Distribution"]
        ),
        .testTarget(
            name: "InteractionTests",
            dependencies: ["Interaction","Xbus","DataVault","Distribution"]),
    ]
)
