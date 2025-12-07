// swift-tools-version: 6.2
import PackageDescription

let package = Package(
	name: "package-template",
	platforms: [
		.macOS(.v13),
		.iOS(.v16)
	],
	products: [
		.library(name: "PackageTemplate", targets: ["PackageTemplate"])
	],
	dependencies: [
		// .package(name: "LocalDependency", path: "../local-dependency"),
		// .package(url: "https://github.com/frazer-rbsn/remote-package.git", exact: "2.0.0")
	],
	targets: [
		.target(
			name: "PackageTemplate",
			dependencies: [
				// .product(name: "LocalDependency", package: "local-dependency"),
				// .product(name: "RemotePackage", package: "remote-package")
			],
			path: "source/",
			resources: [.copy("resource/")]
		),
		.testTarget(
			name: "PackageTemplateTests",
			dependencies: [
				"PackageTemplate"
			],
			path: "test"
		)
	]
)

let swiftSettings: [SwiftSetting] = [
	.enableUpcomingFeature("NonisolatedNonsendingByDefault"),
	.enableUpcomingFeature("InferIsolatedConformances")
]
