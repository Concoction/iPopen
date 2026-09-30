// swift-tools-version:5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "iPopen",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "iPopen",
            targets: ["iPopen"]),
        .library(
            name: "iPopenD",
            targets: ["iPopenD"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "https://github.com/johnno1962/Popen", from: "2.2.4"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "iPopen",
            dependencies: [
                .product(name: "Popen",
                         package: "Popen")]),

        .target(
            name: "iPopenD",
            dependencies: [
                .product(name: "PopenD",
                         package: "Popen")],
            swiftSettings: [.define("DEBUG_ONLY")]),
    ]
)
