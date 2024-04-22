// swift-tools-version: 5.9
// ISOMDLLib

import PackageDescription

let package = Package(
    name: "ISOMDLLib",
    platforms: [.iOS(.v17)],
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "ISOMDLLib",
            targets: ["ISOMDLLib", "ISOMDLLibSupportTarget"])
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/SwiftyJSON/SwiftyJSON", from: "5.0.0"),
        .package(url: "https://github.com/valpackett/SwiftCBOR", from: "0.4.6"),
        .package(url: "https://github.com/auth0/JWTDecode.swift.git", from: "3.1.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .binaryTarget(name: "ISOMDLLib", 
                      url: "https://storage.googleapis.com/cosmo-ios-repo/ISOMDLLib.xcframework.zip", 
                      checksum: "074bcfb280d9b090a122c9bd58b152135d87054b123176cefa8650b83089fc33"
                     ),
        .target(
                name: "ISOMDLLibSupportTarget",
                dependencies: [
                    .product(name: "SwiftyJSON", package: "SwiftyJSON"),
                    .product(name: "SwiftCBOR", package: "SwiftCBOR"),
                    .product(name: "JWTDecode", package: "JWTDecode.swift")],
                path: "ISOMDLLib")
    ],
    swiftLanguageVersions: [.v5]
)
