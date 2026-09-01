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
            url: "https://github.com/Jolibox-Developer/jolibox-ad-mediation-ios/releases/download/0.6.2/JoliboxAdMediation.xcframework.zip",
            checksum: "bbe92698807f464433b7997d9a3e67760bef199a0240ebf1963c68d1f59ebd72"
        ),
    ]
)
