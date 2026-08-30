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
            url: "https://github.com/Jolibox-Developer/jolibox-ad-mediation-ios/releases/download/0.6.1/JoliboxAdMediation.xcframework.zip",
            checksum: "817f396b406cc96f1d3d3c1ff68f7c6db44c5c0f21e01ef2412a51c0d3730794"
        ),
    ]
)
