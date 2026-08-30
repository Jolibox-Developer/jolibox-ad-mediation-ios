// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "JoliboxAdMediation",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "JoliboxAdMediation", targets: ["JoliboxAdMediation"]),
    ],
    targets: [
        .binaryTarget(
            name: "JoliboxAdMediation",
            url: "https://github.com/Jolibox-Developer/jolibox-ad-mediation-ios/releases/download/0.5.0/JoliboxAdMediation.xcframework.zip",
            checksum: "0dd0c305fde7d42d5f34932a0e205803cf07c50b63d465fdfc428c33effe8817"
        ),
    ]
)
