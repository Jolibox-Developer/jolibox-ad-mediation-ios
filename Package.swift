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
            url: "https://github.com/Jolibox-Developer/jolibox-ad-mediation-ios/releases/download/0.6.0/JoliboxAdMediation.xcframework.zip",
            checksum: "ab6b0445a1b87de6a8607880b855a85aa840b8e8d6a920cd781f2a629d76b2e2"
        ),
    ]
)
