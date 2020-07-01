// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "pbxproj-verify",
	products: [
		.library(name: "pbxproj-verifyKit", targets: ["pbxproj-verifyKit"]),
		.executable(name: "pbxproj-verify", targets: ["pbxproj-verify"]),
    ],
    dependencies: [
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
		]),
        .testTarget(
            name: "pbxproj-verifyTests",
            dependencies: ["pbxproj-verify"]),
    ]
)
