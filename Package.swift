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
            url: "https://github.com/Jolibox-Developer/jolibox-ad-mediation-ios/releases/download/0.6.5/JoliboxAdMediation.xcframework.zip",
            checksum: "427dda9ac4ffb871ad34acbb10cea27f2783e80e683c15eb16df9296b8f4550d"
        ),
    ]
)
