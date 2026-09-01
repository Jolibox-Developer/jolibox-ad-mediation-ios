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
            url: "https://github.com/Jolibox-Developer/jolibox-ad-mediation-ios/releases/download/0.6.3/JoliboxAdMediation.xcframework.zip",
            checksum: "96e78d1dd178898ae36e9bcda964bdbd0f59fbbb158d8045939ea65fc832f315"
        ),
    ]
)
