// swift-tools-version: 5.10
import PackageDescription

let package = Package(
  name: "Modules",
  platforms: [.iOS(.v15)],
  products: [
    .singleTargetLibrary("AppFeature")
  ],
  dependencies: [
    .package(url: "https://github.com/krzysztofzablocki/Inject.git", exact: "1.5.0"),
    .package(url: "https://github.com/krzysztofzablocki/Difference.git", exact: "1.0.2"),
    .package(url: "https://github.com/pointfreeco/swift-snapshot-testing", exact: "1.12.0"),
  ],
  targets: [
    .target(name: "Views", dependencies: [
      "Inject"
    ]),
    .target(name: "Models", dependencies: [
    ]),
    .target(name: "AppFeature", dependencies: [
      "Views",
      "Models"
    ]),
  ]
)

extension Product {
  static func singleTargetLibrary(_ name: String) -> Product {
    .library(name: name, targets: [name])
  }
}
