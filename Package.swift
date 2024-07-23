// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "Mixpanel-iPhone",
    platforms: [
      .iOS(.v11),
      .tvOS(.v11),
      .macOS(.v10_13),
      .watchOS(.v4),
    ],
    products: [
        .library(name: "Mixpanel-iPhone", targets: ["Mixpanel-iPhone"]),
    ],
    targets: [
        .target(
            name: "Mixpanel-iPhone",
            path: "Sources",
            resources: [
                .copy("Mixpanel/PrivacyInfo.xcprivacy")
            ],
            cSettings: [
                .headerSearchPath("."),
            ]
        ),
    ]
)
