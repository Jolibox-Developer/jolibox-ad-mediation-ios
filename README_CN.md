# Jolibox Ad Mediation iOS

Jolibox Ad Mediation iOS SDK 的仅二进制 Swift Package 分发仓库。

> English documentation: [README.md](README.md)

## 通过 Swift Package Manager 接入

在 Xcode 中添加本仓库为 Package Dependency，并选择精确的 `0.6.0` Release。在
`Package.swift` 中可使用：

```swift
dependencies: [
    .package(
        url: "https://github.com/Jolibox-Developer/jolibox-ad-mediation-ios.git",
        exact: "0.6.0"
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

## 环境要求

- iOS 13.0 及以上
- Xcode / Swift Package Manager（Swift tools 5.9 及以上）
- 在宿主应用 `Info.plist` 中配置 Google Mobile Ads App ID

请在应用启动阶段完成一次 SDK 初始化，再加载广告。Jolibox 的接入配置会单独
提供，不能提交到源码仓库。

## 二进制校验

`0.6.0` Release 包含 `JoliboxAdMediation.xcframework.zip`。其 Swift Package
校验和记录在 [Package.swift](Package.swift)，SHA-256 校验文件也随 Release 提供。

## 许可证

使用受 [LICENSE](LICENSE) 约束。本仓库仅包含已编译制品的分发元数据，不包含
SDK 源码。
