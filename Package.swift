// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "pbxproj-verify",
	products: [
		.library(name: "pbxproj-verifyKit", targets: ["pbxproj-verifyKit"]),
    ],
    dependencies: [
		.package(url: "https://github.com/apple/swift-argument-parser.git", .upToNextMinor(from: "0.2.0")),
    ],
    targets: [
		.target(
			name: "pbxproj-verifyKit",
			dependencies: [
		]),
        .target(
            name: "pbxproj-verify",
            dependencies: [
				.target(name: "pbxproj-verifyKit"),
				.product(name: "ArgumentParser", package: "swift-argument-parser"),
		]),
        .testTarget(
            name: "pbxproj-verifyTests",
            dependencies: ["pbxproj-verify"]),
    ]
)
