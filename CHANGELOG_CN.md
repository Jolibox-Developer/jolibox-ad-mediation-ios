# 更新日志

> English documentation: [CHANGELOG.md](CHANGELOG.md)

## 0.6.3

- 移除仍包含转义本地源码路径、且宿主接入不需要的编译器 ABI 元数据。
- 保持已验证的真机、arm64 模拟器、x86_64 模拟器二进制切片及可分发 Swift 接口不变。

## 0.6.2

- 重新构建 XCFramework，移除序列化的本机构建路径，同时保留设备、arm64 模拟器和 x86_64 模拟器支持。
- 发布不含 `__MACOSX`、`.DS_Store` 或 AppleDouble 条目的干净 ZIP，并提供匹配的 SHA-256 校验文件。

## 0.6.1

- 重新发布已验证的 XCFramework，并移除本机构建路径元数据。
- 补齐 Swift Package Manager 所需的可下载 GitHub Release 制品。

## 0.6.0

- 以统一的 `0.6.0` 版本重新构建并发布 iOS XCFramework 制品。

## 0.5.0

- Jolibox Ad Mediation iOS 首个公开二进制 Swift Package 版本。
- 支持 AdMob Banner、插屏和激励视频广告聚合 API。
