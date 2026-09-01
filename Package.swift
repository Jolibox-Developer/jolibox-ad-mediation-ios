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
            url: "https://github.com/Jolibox-Developer/jolibox-ad-mediation-ios/releases/download/0.6.4/JoliboxAdMediation.xcframework.zip",
            checksum: "2af6d2e7a29871b2f02799a29f6620723dd41c307fd12347d71bce57e1baa771"
        ),
    ]
)
