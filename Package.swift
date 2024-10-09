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
            targets: ["ISOMDLLib"])
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .binaryTarget(name: "ISOMDLLib", 
                      url: "https://storage.googleapis.com/cosmo-ios-repo/ISOMDLLib-894297.xcframework.zip", 
                      checksum: "1e33c97966bd3637f1d7d0e63170e21da16bde6acd7c3178d73d242d9ef0f0f4"
                     )
        
    ],
    swiftLanguageVersions: [.v5]
)
