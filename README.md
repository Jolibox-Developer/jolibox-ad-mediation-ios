# Jolibox Ad Mediation for iOS

Binary-only Swift Package distribution of the Jolibox Ad Mediation iOS SDK.

> 中文说明：[README_CN.md](README_CN.md)

## Install with Swift Package Manager

In Xcode, add this repository as a package dependency and select the exact
`0.6.3` release. In a `Package.swift` manifest:

```swift
dependencies: [
    .package(
        url: "https://github.com/Jolibox-Developer/jolibox-ad-mediation-ios.git",
        exact: "0.6.3"
    ),
    .package(
        url: "https://github.com/googleads/swift-package-manager-google-mobile-ads.git",
        exact: "12.1.0"
    ),
],
targets: [
    .target(
        name: "YourTarget",
        dependencies: [
            .product(name: "JoliboxAdMediation", package: "jolibox-ad-mediation-ios"),
            .product(
                name: "GoogleMobileAds",
                package: "swift-package-manager-google-mobile-ads"
            ),
        ]
    ),
]
```

## Requirements

- iOS 13.0 or later
- Xcode / Swift Package Manager with Swift tools 5.9 or later
- Google Mobile Ads SDK exactly `12.1.0`
- Google Mobile Ads App ID configured in the host application's `Info.plist`

The `0.6.3` XCFramework was built and verified with Xcode `26.4`. Swift tools
`5.9` is the package-manifest minimum; other Xcode versions are not claimed as
verified unless they have been tested separately.

The binary framework imports `GoogleMobileAds`; therefore the host target must
include the Google Mobile Ads package product shown above. Resolving only the
Jolibox package is incomplete.

Add the host's AdMob App ID to `Info.plist`. An App ID contains `~`; do not put
an ad unit ID containing `/` here.

```xml
<key>GADApplicationIdentifier</key>
<string>YOUR_IOS_ADMOB_APP_ID</string>
```

Initialize the SDK once during application startup and do not enable ad loading
until initialization succeeds. The integration value below is supplied
separately and must not be added to source control.

```swift
import JoliboxAdMediation

JoliboxAds.initialize(
    joliSource: "YOUR_JOLI_SOURCE",
    environment: .staging
) { result in
    switch result {
    case .success:
        // Enable ad loading.
        break
    case .failure(let error):
        // Keep ad loading disabled and report error.code.
        break
    }
}
```

## Binary verification

The `0.6.3` release contains `JoliboxAdMediation.xcframework.zip`. Its Swift
Package checksum is recorded in [Package.swift](Package.swift), and its SHA-256
sidecar is attached to the release.

## License

Use is governed by [LICENSE](LICENSE). This repository intentionally contains
compiled distribution metadata only; it does not contain the SDK source code.
