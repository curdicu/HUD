// swift-tools-version:5.5

import PackageDescription

let package = Package(
        name: "HUD",
        platforms: [
            .iOS(.v13),
        ],
        products: [
            .library(
                    name: "HUD",
                    targets: ["HUD"]),
        ],
        dependencies: [
            .package(url: "https://github.com/SnapKit/SnapKit.git", .upToNextMajor(from: "5.0.1")),
            .package(url: "https://github.com/curdicu/ThemeKit.git", .branch( "main")),
            // .package(url: "https://github.com/curdicu/UIExtensions.git", .branch( "main")),
            .package(url: "https://github.com/horizontalsystems/HsExtensions.Swift.git", .upToNextMajor(from: "1.0.6")),

        ],
        targets: [
            .target(
                    name: "HUD",
                    dependencies: [
                        "SnapKit",
                        .product(name: "ThemeKit", package: "ThemeKit"),
                        .product(name: "UIExtensions", package: "UIExtensions"),
                    ]
            ),
        ]
)
