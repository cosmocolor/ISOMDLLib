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
    dependencies: [
        .package(url: "https://github.com/valpackett/SwiftCBOR.git", from: "0.4.6"),
        .package(url: "https://github.com/Alamofire/Alamofire.git", from: "5.9.1"),
        .package(url: "https://github.com/stephencelis/SQLite.swift.git", from: "0.15.3")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .binaryTarget(name: "ISOMDLLib", 
                      url: "https://storage.googleapis.com/cosmo-ios-repo/ISOMDLLib.xcframework.zip", 
                      checksum: "9f50742882737ac3501d168dd6dc6556536e04ea528daa1fd890c13289411671"
                     )
        
    ],
    swiftLanguageVersions: [.v5]
)
