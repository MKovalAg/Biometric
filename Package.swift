// swift-tools-version: 5.7

import PackageDescription

let package = Package(
    name: "BiometricAuthentication",
    products: [
        .library(
            name: "BiometricAuthentication",
            type: .dynamic,
            targets: ["BiometricAuthentication"]
        ),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "BiometricAuthentication",
            dependencies: []),
        .testTarget(
            name: "BiometricAuthenticationTests",
            dependencies: ["BiometricAuthentication"]
        ),
    ]
)
