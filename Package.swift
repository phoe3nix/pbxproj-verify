// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "pbxproj-verify",
	products: [
		.library(name: "Pbxproj-verifyKit", targets: ["Pbxproj-verifyKit"]),
    ],
    dependencies: [
		.package(url: "https://github.com/apple/swift-argument-parser.git", .upToNextMinor(from: "0.2.0")),
		.package(name: "XcodeProj", url: "https://github.com/tuist/xcodeproj.git", .upToNextMajor(from: "7.12.0")),
		.package(url: "https://github.com/JohnSundell/ShellOut.git", from: "2.3.0"),
    ],
    targets: [
		.target(
			name: "Pbxproj-verifyKit",
			dependencies: [
            	"XcodeProj",
				"ShellOut",
        ]),
        .target(
            name: "Pbxproj-verify",
            dependencies: [
				.target(name: "Pbxproj-verifyKit"),
				.product(name: "ArgumentParser", package: "swift-argument-parser"),
		]),
        .testTarget(
            name: "Pbxproj-verifyTests",
            dependencies: ["Pbxproj-verify"]),
    ]
)
