# Jolibox Ad Mediation for iOS

Binary-only Swift Package distribution of the Jolibox Ad Mediation iOS SDK.

> 中文说明：[README_CN.md](README_CN.md)

## Install with Swift Package Manager

In Xcode, add this repository as a package dependency and select the exact
`0.5.0` release. In a `Package.swift` manifest:

```swift
dependencies: [
    .package(
        url: "https://github.com/Jolibox-Developer/jolibox-ad-mediation-ios.git",
        exact: "0.5.0"
    ),
],
targets: [
    .target(
        name: "YourTarget",
        dependencies: [
            .product(name: "JoliboxAdMediation", package: "jolibox-ad-mediation-ios")
        ]
    ),
]
```

## Requirements

- iOS 13.0 or later
- Xcode / Swift Package Manager with Swift tools 5.9 or later
- Google Mobile Ads App ID configured in the host application's `Info.plist`

Initialize the SDK once during application startup, before loading ads. Your
Jolibox integration configuration is supplied separately and must not be added
to source control.

## Binary verification

The `0.5.0` release contains `JoliboxAdMediation.xcframework.zip`. Its Swift
Package checksum is recorded in [Package.swift](Package.swift), and its SHA-256
sidecar is attached to the release.

## License

Use is governed by [LICENSE](LICENSE). This repository intentionally contains
compiled distribution metadata only; it does not contain the SDK source code.
