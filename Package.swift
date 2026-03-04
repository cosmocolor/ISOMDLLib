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
                      url: "https://storage.googleapis.com/cosmo-ios-repo/ISOMDLLib-b694f6.xcframework.zip", 
                      checksum: "8c5d4cec897bb4e5f7b806dfe7e158f79d7798a742dc4202de221f3bae810df4"
                     )
        
    ],
    swiftLanguageVersions: [.v5]
)
