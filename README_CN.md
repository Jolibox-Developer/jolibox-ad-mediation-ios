# Jolibox Ad Mediation iOS

Jolibox Ad Mediation iOS SDK 的仅二进制 Swift Package 分发仓库。

> English documentation: [README.md](README.md)

## 通过 Swift Package Manager 接入

在 Xcode 中添加本仓库为 Package Dependency，并选择精确的 `0.6.2` Release。在
`Package.swift` 中可使用：

```swift
dependencies: [
    .package(
        url: "https://github.com/Jolibox-Developer/jolibox-ad-mediation-ios.git",
        exact: "0.6.2"
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

## 环境要求

- iOS 13.0 及以上
- Xcode / Swift Package Manager（Swift tools 5.9 及以上）
- Google Mobile Ads SDK 严格使用 `12.1.0`
- 在宿主应用 `Info.plist` 中配置 Google Mobile Ads App ID

`0.6.2` XCFramework 使用 Xcode `26.4` 完成构建验收。Swift tools `5.9` 是
Package Manifest 的最低要求；其他 Xcode 版本未经单独测试时，不作已验收承诺。

二进制 framework 会导入 `GoogleMobileAds`，所以宿主 target 必须同时加入上面所示的
Google Mobile Ads package product；只解析 Jolibox package 并不是完整接入。

在宿主 `Info.plist` 中配置 AdMob App ID。App ID 包含 `~`，不要误填包含 `/` 的
广告位 ID。

```xml
<key>GADApplicationIdentifier</key>
<string>YOUR_IOS_ADMOB_APP_ID</string>
```

请在应用启动阶段完成一次 SDK 初始化，并且只在初始化成功后启用广告加载。下方接入参数会
单独提供，不能提交到源码仓库。

```swift
import JoliboxAdMediation

JoliboxAds.initialize(
    joliSource: "YOUR_JOLI_SOURCE",
    environment: .staging
) { result in
    switch result {
    case .success:
        // 启用广告加载。
        break
    case .failure(let error):
        // 保持广告加载禁用，并上报 error.code。
        break
    }
}
```

## 二进制校验

`0.6.2` Release 包含 `JoliboxAdMediation.xcframework.zip`。其 Swift Package
校验和记录在 [Package.swift](Package.swift)，SHA-256 校验文件也随 Release 提供。

## 许可证

使用受 [LICENSE](LICENSE) 约束。本仓库仅包含已编译制品的分发元数据，不包含
SDK 源码。
