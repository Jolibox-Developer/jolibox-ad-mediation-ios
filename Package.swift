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
            url: "https://github.com/Jolibox-Developer/jolibox-ad-mediation-ios/releases/download/0.6.6/JoliboxAdMediation.xcframework.zip",
            checksum: "863cca2a631eb0fccc1f6bf841e572194e45b879742b02b7b3a85ed6628215a5"
        ),
    ]
)
