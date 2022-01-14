// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "MiniApp",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "MiniApp",
            targets: ["MiniApp"])
    ],
    dependencies: [
        .package(url: "https://github.com/weichsel/ZIPFoundation.git", .upToNextMajor(from: "0.9.0")),
        .package(url: "https://github.com/datatheorem/TrustKit", .upToNextMajor(from: "2.0.0")),
        .package(url: "https://github.com/rakutentech/GoogleMobileAds-SPM.git", .upToNextMajor(from: "8.13.0"))
    ],
    targets: [
        .binaryTarget(
            name: "MiniApp",
            url: "https://github.com/Climbatize/ios-miniapp/releases/download/v4.0.0/MiniApp.xcframework.zip",
            checksum: "1146ea2d71d9b06e5a238d666b21560166499e45177450033e727315340616ba"
        )
    ],
    swiftLanguageVersions: [
        .v5
    ]
)
