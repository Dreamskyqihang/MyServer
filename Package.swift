// swift-tools-version: 5.7
import PackageDescription

let package = Package(
    name: "MyServer",
    platforms: [.macOS("12.0")],
    products: [
        .executable(
            name: "MyServer",
            targets: ["MyServer"]),
    ],
    dependencies: [
        .package(url: "https://github.com/vapor/vapor.git", .upToNextMajor(from: "4.0.0")),
    ],
    targets: [
        .executableTarget(
            name: "MyServer",
            dependencies: [
                .product(name: "Vapor", package: "vapor")
            ]),
        .testTarget(
            name: "MyServerTests",
            dependencies: ["MyServer"]),
    ]
)
