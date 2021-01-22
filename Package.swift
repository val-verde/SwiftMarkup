// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "SwiftMarkup",
    products: [
        .library(
            name: "SwiftMarkup",
            targets: ["SwiftMarkup"]
        ),
    ],
    dependencies: [
        .package(name: "CommonMark",
                 url: "https://github.com/val-verde/CommonMark.git",
                 .branch("val-verde-mainline-next")),
    ],
    targets: [
        .target(
            name: "SwiftMarkup",
            dependencies: [
                .product(name: "CommonMark", package: "CommonMark")
            ]
        ),
        .testTarget(
            name: "SwiftMarkupTests",
            dependencies: [
                .target(name: "SwiftMarkup")
            ]
        )
    ]
)
