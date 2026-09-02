# Changelog

> 中文说明：[CHANGELOG_CN.md](CHANGELOG_CN.md)

## 0.6.5

- Makes Google Mobile Ads `12.14.0` an implementation-only dependency of the XCFramework.
- Removes Google Mobile Ads and UMP types from the public Swift interface while preserving all Jolibox ad lifecycle callbacks.
- Ships only Jolibox object code; Google Mobile Ads Objective-C classes remain external references resolved once by the host target.

## 0.6.4

- Removes the stale archive-time code signature after adding distributable Swift interfaces, allowing each host to apply a fresh embedding signature.
- Keeps the path-clean binary slices and public Swift interfaces from `0.6.3` unchanged.

## 0.6.3

- Removes compiler-only ABI metadata that retained escaped local source paths.
- Keeps the verified device, arm64 Simulator, and x86_64 Simulator binary slices and distributable Swift interfaces unchanged.

## 0.6.2

- Rebuilds the XCFramework without serialized local build paths while retaining device, arm64 Simulator, and x86_64 Simulator support.
- Publishes a clean ZIP without `__MACOSX`, `.DS_Store`, or AppleDouble entries and provides a matching SHA-256 sidecar.

## 0.6.1

- Republishes the verified XCFramework with local build-path metadata removed.
- Restores the downloadable GitHub Release asset required by Swift Package Manager.

## 0.6.0

- Rebuilt and republished the iOS XCFramework under the unified `0.6.0` release.

## 0.5.0

- First public binary Swift Package release of Jolibox Ad Mediation for iOS.
- Supports AdMob Banner, Interstitial, and Rewarded ad mediation APIs.
