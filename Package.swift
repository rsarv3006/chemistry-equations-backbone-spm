// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.
// Swift Package: ChemistryEquationsBackbone

import PackageDescription;

let package = Package(
    name: "ChemistryEquationsBackbone",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15)
    ],
    products: [
        .library(
            name: "ChemistryEquationsBackbone",
            targets: ["ChemistryEquationsBackbone"]
        )
    ],
    dependencies: [ ],
    targets: [
        .binaryTarget(name: "RustFramework", path: "./RustFramework.xcframework"),
        .target(
            name: "ChemistryEquationsBackbone",
            dependencies: [
                .target(name: "RustFramework")
            ]
        ),
    ]
)